Some are some notes about Genotype List String Code.
Here's a table showing GL String presendence...

<table>
    <thead>
        <tr>
            <th>Precedence</th>
            <th>Delimiter</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>0</td>
            <td>?</td>
            <td>Possible Gene Locations<br />describes locus ambiguity where the typing system cannot distinguish paralogous genes</td>
        </tr>
        <tr>
            <td>1</td>
            <td>^</td>
            <td>Gene/Locus<br />locus delimiter for multilocus unphased genotypes</td>
        </tr>
        <tr>
            <td>2</td>
            <td>|</td>
            <td>Genotype List<br />describes genotype ambiguity where the typing system cannot distinguish chromosomal phase</td>
        </tr>
        <tr>
            <td>3</td>
            <td>|</td>
            <td>Genotype</td>
        </tr>
        <tr>
            <td>4</td>
            <td>~</td>
            <td>Haplotype<br />indicates alleles that are in chromosomal phase (cis)</td>
        </tr>
        <tr>
            <td>5</td>
            <td>/</td>
            <td>Allele List<br />describes allele ambiguity where the typing system cannot distinguish between alleles</td>
        </tr>
    </tbody>
</table>
{:.grid}
