public with sharing abstract class CompositeSimpleExemple {

    public void add() {
        
    }

    public with sharing class Composite extends CompositeSimpleExemple {

        List<CompositeSimpleExemple> COMPONENT_LIST = new List<CompositeSimpleExemple>();
        
        public void add(CompositeSimpleExemple component) {
            COMPONENT_LIST.add(component);
        }
    
    }
    
    public with sharing virtual class Leaf1 extends CompositeSimpleExemple {

        public String STRING_LEAF1 = 'leaf 1';

    }
    
    public with sharing virtual class Leaf2 extends CompositeSimpleExemple {
    
        public String STRING_LEAF2 = 'leaf 2';

    }

    public with sharing virtual class Leaf3 extends Leaf1 {

        public String STRING_LEAF3 = 'leaf 3';
        
    }

    public with sharing class ClientCode {

        public void execute() {
            
            Composite composite = new Composite();
            
            Leaf1 leaf1 = new Leaf1();
            Leaf2 leaf2 = new Leaf2();
            Leaf3 leaf3 = new Leaf3();

            composite.add(leaf1);
            composite.add(leaf2);
            composite.add(leaf3);

            System.debug('composite ==> ' + composite);

        }

    } 

}