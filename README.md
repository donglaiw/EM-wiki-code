# EM-code
list of connectomics packages in [Harvard Visual Computing Group](https://vcg.seas.harvard.edu) 

## Segmentation
<table>
  <tr>
    <td>Category</td>
    <td>Task</td>
    <td>Description</td>
    <td>Resource</td>
  </tr>
  <tr>
    <td rowspan=2>image</td>
    <td>image alignment</td>
    <td>affine</td>
    <td> <a href="https://github.com/Rhoana/small_stack_affine_alignment">code</a></td>
  </tr>    
  <tr>
    <td>image pre-process</td>
    <td>deflicker, destripe, interpolation</td>
    <td><a href="https://github.com/donglaiw/EM-preprocess">code</a></td>
  </tr>
  <tr>
    <td rowspan=3>image->segment</td>
    <td> affinity prediction</td>
    <td>pytorch unet</td>
    <td><a href="https://github.com/donglaiw/EM-pytorch">code</a></td>
  </tr>    
  <tr>
    <td>watershed</td>
    <td>affinity-based watershed</td>
    <td><ul>
          <li>waterz: <a href="https://arxiv.org/pdf/1709.02974.pdf">paper</a>
            <a href="https://github.com/donglaiw/waterz">code</a>
          </li>
          <li>zwatershed: <a href="https://arxiv.org/pdf/1505.00249.pdf">paper</a>
            <a href="https://github.com/donglaiw/zwatershed">code</a>
          </li>
        </ul>
      </td>
  </tr>
  <tr>
    <td> cell segmentation</td>
    <td>traditional tricks</td>
    <td><a href="https://github.com/donglaiw/EM-cell">code</a></td>
  </tr>    

  <tr>
    <td rowspan=3>segment</td>
    <td> segment stitch</td>
    <td> region-graph operations</td>
    <td><a href="https://github.com/donglaiw/EM-rgLib">code</a></td>
  </tr>    
  
  <tr>
    <td> segment merge</td>
    <td>CNN+graph optimization</td>
    <td><a href="https://github.com/bmatejek/ibex">code</a></td>
  </tr>    
  <tr>
    <td> segment utility</td>
    <td> conversion, operation, evaluation</td>
    <td><a href="https://github.com/donglaiw/EM-segLib">code</a></td>
  </tr>    
</table>

## Proofread+Visualization

## Application
<table>
  <tr>
    <td>Category</td>
    <td>Task</td>
    <td>Description</td>
    <td>Resource</td>
  </tr>  
  <tr>
    <td>Synapse</td>
    <td>prediction, analysis</td>
    <tr>
  </tr>
    <tr>
    <td>Cell type</td>
    <td></td>
    <td></td>
    <td><a href="">code</a></td>  
    <tr>
  </tr>
</table>

## Infrastructure
<table>
  <tr>
    <td>Category</td>
    <td>Task</td>
    <td>Description</td>
    <td>Resource</td>
  </tr>  
  <tr>
    <td>Data</td>
    <td></td>
    <tr>
  </tr>
    <tr>
      <td>Computation</td>
      <td>task manager</td>
      <td>Luigi pipeline</td>
      <td><a href="https://github.com/microns-ariadne/pipeline_engine">code</a></td>
    <tr>
  </tr>
</table>
