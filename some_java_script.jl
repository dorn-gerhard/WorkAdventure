### A Pluto.jl notebook ###
# v0.19.3

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 424086fa-c66f-11ec-2111-07a99002c44c
using HypertextLiteral

# ╔═╡ 84c2a1df-48c1-476f-855c-e5e44330f770
using PlutoUI

# ╔═╡ 7482eefd-d0cf-4015-b98d-1d07227ac20b
@htl("""
<script> let a = 4 </script>
""")

# ╔═╡ eadef6dd-6a52-4806-b302-7d3e0c74d9e3
md"""
---
"""

# ╔═╡ 19b0a186-b3aa-491c-b7a7-b43f8481a450
md"""
### Getting a player state variable
"""

# ╔═╡ 066fbac1-3418-449d-8424-49b6b913a8d9
@bind some_value @htl("""
<div>
<script src="https://play.workadventu.re/iframe_api.js"></script>
<script>
const div = currentScript.parentElement
div.value = WA.player.state.something
div.dispatchEvent(new CustomEvent("input"))

</script>

</div>

""")

# ╔═╡ 6f6208ef-3493-4963-8356-b85baae68cdb
some_value

# ╔═╡ 1b799745-86ab-48ba-93bf-0e9f3f4ce11d


# ╔═╡ 862c01c0-50a6-4091-a52e-9677a5dbc370
md"""
---
"""

# ╔═╡ 1afa0f78-0854-4c45-aa92-8d39cde34eb1
md"""
### Setting a player state variable
"""

# ╔═╡ 62333273-9a24-400a-b252-2e7b4a0352bc
@bind value_to_set TextField()

# ╔═╡ 6d3c373a-8de6-48fa-8e89-d8d489513c21
@htl("""
<div>
<script src="https://play.workadventu.re/iframe_api.js"></script>
<script>
WA.player.state.something = $(value_to_set)

</script>

</div>

""")

# ╔═╡ 944484b9-eebe-4aba-9885-f8ce287507f4
md"""
---
"""

# ╔═╡ 8bab1d84-7eb7-44c7-ad82-faa079bbb144


# ╔═╡ cf9f4c56-14ab-4c91-b567-eef7bfdb6130
@bind name @htl("""
<div>
<script src="https://play.workadventu.re/iframe_api.js"></script>
<script>
const div = currentScript.parentElement
div.value = WA.player.name
div.dispatchEvent(new CustomEvent("input"))

</script>

</div>

""")

# ╔═╡ 71627e83-1c41-43d8-a544-afbb7e9a509a
name

# ╔═╡ 9960df8a-6795-4c95-9a1b-07ad8ebd5ec0
@bind what1 confirm(TextField())

# ╔═╡ 32a3764a-0ed6-47e8-b384-0c30c69fb5f2
what = "Welcome to Pluto, $(name)!"

# ╔═╡ bc9c117c-ed41-40cb-8b17-1a0d1ca68157
# @htl("""
# <div>
# <script src="https://play.workadventu.re/iframe_api.js"></script>
# <script>
# WA.player.test3 = WA.player.test3

# WA.chat.sendChatMessage($(what), "Fonsi")
# WA.player.moveTo(100,100,1)
# </script>

# </div>

# """)

# ╔═╡ f84220ab-0df5-4fb5-b15b-dce6f37e77f2


# ╔═╡ 4282657b-38c2-4b2d-993e-4994fd3ee55c


# ╔═╡ a08bbe41-2391-4a4e-a7b7-0b9d53e56672
@htl("""
<script src="https://play.workadventu.re/iframe_api.js"></script>
<script>

console.log(WA)
</script>
""")

# ╔═╡ 19eeb29a-6082-4fd4-b61c-baab176066cb
@htl("""
<script src="https://play.workadventu.re/iframe_api.js"></script>
<script>
WA.player.setOutlineColor(240, 1, 1))
console.log(WA)
</script>
""")


# ╔═╡ 1a36d095-5190-4d38-a177-7624475e3af9
@bind width html"<input type=range max=600>"

# ╔═╡ 13c19a10-4599-4118-8b3d-0c19405b2fd0
@htl("""
<svg 
width=$(width)
  viewBox="0 0 $(width) 200"
  xmlns='http://www.w3.org/2000/svg'>

  <filter id='noiseFilter'>
    <feTurbulence 
      type='fractalNoise' 
      baseFrequency=.37
      numOctaves='3' 
      stitchTiles='stitch' />
  </filter>

  <rect
    width='100%' 
    height='100%' 
    filter='url(#noiseFilter)' />
</svg>
""")

# ╔═╡ 2c9f3ae8-085a-4d94-bea7-cc44350ba881
@htl("""
<div style="position: relative">

<div style=$("""
width: $(width)px;
height: 250px;
	top: 0;
background: #161c62;
position: absolute;
""")></div>

<div style=$("""
  width: $(width)px;
  height: 250px;
	top: 0;

mix-blend-mode: lighten;

  filter: contrast(260%) brightness(350%);
  background: 
	conic-gradient(from 152deg at 50% 50%, rgba(74,56,37,1), rgba(228,191,102,0)),
	url("data:image/svg+xml,%3Csvg viewBox='0 0 $(width) 205' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.67' numOctaves='6' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E");
""")></div>
  
""")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
HypertextLiteral = "~0.9.3"
PlutoUI = "~0.7.38"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "1285416549ccfcdf0c50d4997a94331e88d68413"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "670e559e5c8e191ded66fa9ea89c97f10376bb4c"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.38"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═424086fa-c66f-11ec-2111-07a99002c44c
# ╠═13c19a10-4599-4118-8b3d-0c19405b2fd0
# ╠═7482eefd-d0cf-4015-b98d-1d07227ac20b
# ╟─eadef6dd-6a52-4806-b302-7d3e0c74d9e3
# ╟─19b0a186-b3aa-491c-b7a7-b43f8481a450
# ╠═066fbac1-3418-449d-8424-49b6b913a8d9
# ╠═6f6208ef-3493-4963-8356-b85baae68cdb
# ╠═1b799745-86ab-48ba-93bf-0e9f3f4ce11d
# ╟─862c01c0-50a6-4091-a52e-9677a5dbc370
# ╟─1afa0f78-0854-4c45-aa92-8d39cde34eb1
# ╠═62333273-9a24-400a-b252-2e7b4a0352bc
# ╠═6d3c373a-8de6-48fa-8e89-d8d489513c21
# ╟─944484b9-eebe-4aba-9885-f8ce287507f4
# ╟─8bab1d84-7eb7-44c7-ad82-faa079bbb144
# ╠═cf9f4c56-14ab-4c91-b567-eef7bfdb6130
# ╠═71627e83-1c41-43d8-a544-afbb7e9a509a
# ╠═9960df8a-6795-4c95-9a1b-07ad8ebd5ec0
# ╠═32a3764a-0ed6-47e8-b384-0c30c69fb5f2
# ╠═bc9c117c-ed41-40cb-8b17-1a0d1ca68157
# ╠═f84220ab-0df5-4fb5-b15b-dce6f37e77f2
# ╠═84c2a1df-48c1-476f-855c-e5e44330f770
# ╠═4282657b-38c2-4b2d-993e-4994fd3ee55c
# ╠═a08bbe41-2391-4a4e-a7b7-0b9d53e56672
# ╠═19eeb29a-6082-4fd4-b61c-baab176066cb
# ╠═1a36d095-5190-4d38-a177-7624475e3af9
# ╠═2c9f3ae8-085a-4d94-bea7-cc44350ba881
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
