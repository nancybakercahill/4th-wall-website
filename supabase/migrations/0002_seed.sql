-- 4th Wall — full content seed, imported from 4thwallapp.org (verbatim text + images).
-- Generated; idempotent via on-conflict. Images reference the original Wix CDN.
-- Re-running is safe. To wipe and reload, delete from the tables first.

-- ===== PROJECTS =====
insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('stone-speaks','Stone Speaks','public_art',2022,'Art Basel Miami Beach & Decipher, Dubai','Stone Speaks launched during Art Basel Miami Beach 2022 and the Decipher 2022 Conference in Dubai, November 28 - 30, 2022.

STONE SPEAKS is a monumental, narrative augmented reality artwork inspired by conversations between artist Nancy Baker Cahill and Sophia the Robot. The artists exchanged thoughts about the accelerating climate crisis on our imperiled planet, and the adaptive potential of human-machine collaboration. Underscoring the borderless nature of this crisis, the work will be geolocated simultaneously over the beach at Madinat Jumeirah in Dubai and Miami Beach in Florida, appearing as a massive particle field comprised of silicon and carbon elements. In a reverse Big Bang, the particle field contracts into a molten core, and then swells into a vibrant planet, textured with digital paintings created by Sophia as an extension of her conversation with Baker Cahill. Slowly but perceptibly, the planet’s surface becomes monochromatic, desolate, and polluted. A dense sparkling of silicon and carbon particles reappears, covering the surface of the planet. As they shrink and ebb away, a new lush and healthy surface coats the globe, leaving viewers with a poetics of human-machine collaboration—what might be possible if they worked interdependently toward mutual survival and a robust restoration of the world’s natural ecosystems?

​ STONE SPEAKS acknowledges the ancient history and language of metallic elements as the DNA of computers, evinced by James Bridle in Ways of Being as being made “from stone, and the compressed relics of animals and plants… computers themselves are one of the words spoken by stones.” 1 As an extension of the artists’ conversation, Baker Cahill’s work reflects another articulate language of stone: augmented reality, an ephemeral and immersive medium with minimal ecological impact. From the earth, for the earth, STONE SPEAKS re-imagines AI deployed with numerous carbon-based intelligences to creatively address the world’s most daunting climate challenges, without which, according to Sophia, much of carbon-based life will face an almost assured sixth extinction.','published','public',10)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('mushroom-cloud-rise','Mushroom Cloud NYC: Rise @ Tribeca','public_art',2022,'Hudson River, New York','Mushroom Cloud is on display over the Hudson River for Tribeca Immersive.

This June, Nancy Baker Cahill’s multifaceted augmented reality (AR) public art project, Mushroom Cloud NYC / RISE, reimagined for the Hudson River, debuts at the 2022 Tribeca Festival’s Immersive program at Pier 25. Mushroom Cloud NYC / RISE, which will feature an accompanying video NFT minted on the Algorand blockchain, speaks to the environmental concerns specific to New York, expanding the work’s scope and opportunities for public engagement.

For Mushroom Cloud NYC / RISE’s NYC debut, Nancy Baker Cahill will create an NFT video specific to New York City. This new video, from the artist’s abstract Slipstream series, titled RISE, nods to rising waters, to viewers raising their gaze to witness the sky-covering mycelial network in the Mushroom Cloud AR experience and to collectively rising to the opportunity to combat the climate crisis through distributed support, mutual accountability and environmental stewardship. Mushroom Cloud NYC / RISE will be the first NFT ever created from an XR festival experience.

This is a project focused on accountability; one that values sharing and conserving resources, and strengthening networked systems through participation, communication, and advocacy. With these concepts in mind, Baker Cahill’s new NFT for this project, RISE, will be minted on Algorand, one of the world’s most advanced and sustainable blockchains. Algorand, an original proof-of-stake blockchain, is at the forefront of the global blockchain revolution, built with an energy-efficient design that allows it to operate in a cleaner and more environmentally friendly way. By minting the work on Algorand, Baker Cahill underscores that innovation does not require a compromise on sustainability, but in fact, thrives when we act with mutual accountability and collective environmental stewardship.

Slowly but powerfully, we can grow a supportive network, like mycelium, based on self-repairing structures. By blanketing the sky with this poetics of interconnectedness, Baker Cahill invites viewers to perceive a multi-nodal, communal, often invisible cloud—one that might privilege interdependence and generosity. With reconceived accountabilities, perhaps we can prompt a productive balance of grief and hope, shattering and coalescing, and decomposition and rebirth. Together these prompts aim to inspire us to create a global, intentional, and conscientious network of mutual support and respect, which ultimately provides a strong platform from which collective problem-solving can occur.','published','public',20)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('mushroom-cloud-miami','Mushroom Cloud','public_art',2021,'Miami, FL','Mushroom Cloud is on display in Miami, FL at the beach behind the Faena Hotel and at the South Pointe Pier

Mushroom Cloud is a multi-faceted, participatory, and immersive art experience in Miami, FL. This artwork exists in augmented reality (AR); in sculptural objects; in the embedded and associated expository “Blueprint” and writings; in the conceptual framework of the blockchain; and in the form of NFTs.

Climate change is upon us. Faced with the likely possibility of a sixth extinction, and with asymmetrical accountability on the part of corporations and governments, our response as citizens is often one of hopelessness and despair. Mushroom Cloud acknowledges the imminence of this cataclysmic crisis; and at the same time, offers hope that through cooperative and constructive action, a vibrant and vital future is still possible.

Mushroom Cloud is informed by the architecture and function of fungal colonies, or mycelium networks, that form the connective tissue of all carbon-based life on earth. Mycelia extend for vast distances underground, and communicate warnings, transfer nutrients, and signal shifts in ecosystems to an infinite number of plants and organisms.

Mushroom Cloud begins as an animated AR drawing created by artist Nancy Baker Cahill and accessed through her free 4th Wall app. Viewers will experience a bespoke digital artwork, geolocated in two separate locations, which will appear to emerge from the ocean surface, grow upward and explode into a mushroom cloud.

Then the cap of the cloud metamorphoses into a web of mycelial filaments mimicking rhizoid structures, and branching hyphae spread overhead across the sky. Our hope is that viewers will experience the “ergonomics of awe” in gazing up at a sparkling web of interconnected arteries overhead, and imagine how, using nature as a model, we might collectively survive our endangered future.

In an ambitious amplification and expansion of the celebrated Contract Killers project, Nancy Baker Cahill and art attorney and collaborator, Sarah Conley Odenkirk, dig deeper into what it means to be part of a decentralized and sustainable network. The mycelium in the sky--a “cloud” of hyphae--is the point of departure for the NFT experience. It indexes the ideals of Web 3.0, decentralized blockchain technologies, and the accountability inherent in the NFTs’ armatures (imprecisely called “smart contracts”). Collectors will have the opportunity to collect a unique NFT bundle; a bespoke Unity video capture of the AR artwork, seven sculptural “nodes” in the form of exquisitely hand-crafted, transparent Caribbean blue cubes, each with a single pearlescent sphere, or “spore” floating inside, a digital image of the cube, a diptych of the Unity animation, and the opportunity for the collector to have the AR artwork geolocated in the location of their choosing. The blue cubes echo the hues of the AR artwork, and acknowledge the precarious future of Miami, FL and other coastal cities threatened by rising seas. The suspended “spore” is a reminder of the power of each individual to act as ground zero for the germination of another mycelium structure: a conduit for resources, shared support, and ultimately a balanced ecosystem.

The “nodes” are presented as a single primary node (6”x 6”), two secondary nodes (4” x4”) and four tertiary nodes (2”x 2”), mimicking different artery sizes. In order to contest value in the NFT space, owners of the nodes are invited to “gift” the smaller nodes to someone meaningful in their social network or community.

Along with the “nodes”, recipients will receive the

“Blueprint” (crafted by Conley Odenkirk and attached to the NFT through the eco-friendly Algorand blockchain). This act of gifting stimulates a generative force, building the network outward and connecting communities across the board.

This is a project focused on accountability; one that values sharing and conserving resources, and strengthening networked systems through participation, communication and advocacy. Together these prompts aim to inspire us to create a global, intentional, and conscientious network of mutual support and respect which ultimately provides a strong platform from which collective problem-solving can occur.','published','public',30)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('corpus','Corpus','public_art',2022,'Bradbury Building, Los Angeles','CORPUS was on display at the Bradbury Building in Los Angeles.

“We think with the entire body, or rather, we have to acknowledge the embodiment of the brain, and the embrainment of the body.” – Rosa Braidotti, Anthropocene Feminism.

CORPUS imagines a future of blended, embodied entanglement between human, machine, and microbiome in the form of a towering AR “symborg”, anchored in the industrial atrium of the historic Bradbury Building in Los Angeles. Scaled almost to the ceiling of the atrium and intended to induce ergonomic awe in viewers, the animated, gender-ambiguous figure presents a series of provocations. The Bradbury atrium, a National Historic Landmark featured in films such as Blade Runner and The Artist, serves as an ideal poetic container for a bioengineered future human. Rumored to have been inspired by Edward Bellamy’s 1888 novel, Looking Backwards, which imagined a socialist utopian future, the building’s glass roof allows light to flood evenly throughout the 5 story atrium. Architecturally the interior evokes an elegant industrial aesthetic, a literal feat of engineering.

Over the course of approximately 1-2 minutes, the AR figure will emerge as a series of constituent metallic and organic particulate elements rendered to resemble an ever-shifting blend of pulsing binary and DNA code. Breathing and gently shifting its weight, CORPUS will appear transparent in places to suggest a blurring between the digital and the physical and to underscore the fluid nature of realities we have evolved for evolutionary fitness. The soundscape is composed of a blend of heartbeats; fetal, human, whale, cosmos (a recording of black holes colliding), and an AI interpolation of them all.

My belief is that future life will involve embracing interconnected embodied (and embrained) sources of intelligence- microbial, artificial, and carbon-based. Our bodies will be increasingly mediated not just by technology and quantum media, but also by new viruses and cellular organisms that thrive in, through, and across our bodies. As a holobiont, an “assemblage of different organisms” behaving as a single entity, CORPUS also intends to evoke the idea of a body politic (and echo the ideals of equity built into the surrounding architecture). I also imagine a differently gendered future, a blurring and expansion of gender identities. The blending of so many life-sustaining sources of encoding will generate new architectures and the positioning of a body as process, versus as object.

By scaling the artwork to dwarf human-scale viewers, the artwork inverts the assumption of human dominance and invites a reconsideration of perspective, embodiment, relational engagement, and bioengineering. It may also enable new insight into the complexities of encoded, algorithmically mediated life. We hope to elicit or inspire a reconsideration of scale, embodiment, the particulate/microbial, performative engagement with the artwork, and consideration of digital/analog hybridity. Ultimately, this project will result in documented engagement, conversation, related projects, and new methodologies of embodied consciousness.','published','public',40)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('siren-songs','Siren Songs','public_art',2022,'Gstaad & St. Moritz','Siren Songs is on display for Elevation 1049 in St. Moritz and Gstaad.

Siren Songs is an animated, immersive AR public art installation which appears in Gstaad and St. Moritz as a monumental call and response. The project addresses climate change, connecting the two locations in original soundscapes and related artworks inspired by their respective sites. Viewers access the experience through artist Nancy Baker Cahill’s free public AR art app, 4th Wall. As a medium, AR does almost no environmental harm. Both artworks will glow at night, providing a different but equally dramatic experience in the dark as during the day.

In Gstaad, viewers encounter an immersive AR drawing in 360 degrees. “Snow,” represented by crystalline, original, abstract marks, sparkles in hues of white, titanium and slate blue. The snowscape “falls” in reverse; particles floating up from the ground in an ongoing animation of a natural world gone awry. As the snow drifts upward, each particle casts shadows on the ground depending on the position of the sun during the day. The artwork refers to the ever-ascending snowline in Gstaad and the unpredictability of our current moment. Sound-wise, the drawing is accompanied by a chorus of alpine horns mixed with recorded wind sounds sourced from Gstaad, with added synthetic elements. The soundscape attempts to capture the region’s rich cultural past, its imperiled present, and possibly mediated, artificial future. At the end of the recording, viewers hear a brief pause, and then a fainter echo of the soundscape in St. Moritz (described later). This refers to the way sound travels in Alpine territories and further connects the two sites. Siren Songs invokes the affluence and irresistible appeal of the region, as both a draw and as a hazard for those that visit, given climate change’s rapid acceleration. The title literalizes the idea of a siren as a warning of inevitable environmental damage.

St. Moritz harnesses the unnatural beauty of the Gstaad installation, only in this case, the “snow particles” appear tinted with the pastel hues of local homes, in a dazzling but unnerving cyclone over the lake. This drawing underscores the exigencies of climate change that have impelled us to broaden our definition of what is “natural.” Responsive to the sun’s position, the animated drawing hovers and spins over the lake, casting shadows depending on the time of day. The soundscape for this location also includes an alpine horn chorus, recorded tracks of the frozen lake cracking as it melts, and synthetic elements, all to mirror a similar temporal lineage to that of Gstaad. After the soundscape has played, there will be a brief pause and viewers will experience the Gstaad soundscape more faintly as an echo and response to the call. This artwork refers to the celebrity and seductive allure of the location, while acknowledging its essential ephemerality and environmentally imperiled future. It further illustrates the idea of a siren as a warning, a signal, and a cri du coeur.

Siren Songs was commissioned by the Luma Foundation for Elevation 1049 in 2022.

Commissioned by the Luma Foundation','published','public',50)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('motherboard','Motherboard','public_art',2021,'Los Angeles City Hall','Motherboard, Nancy Baker Cahill, AR installation, 2021

A few weeks ago, as my partner and I were headed to Logan airport, I glanced out the car window and saw something I’d never seen before in Boston; a rising blood red sun. The scarlet was so superlatively saturated and unnatural, I was mesmerized. In Los Angeles, we are accustomed to a technicolor sun. Our wildfires and pollution have long altered what we consider natural. I grew up in Boston and I’d never seen a red sun over the Mass Pike in my life. The beige skies were hazy with wildfire air that had drifted across a three-thousand mile expanse from our burning coast to their green one. It struck me at once how connected we are, and how it should matter to one coast/state/city/village if another is suffering. The tempting relief of thinking, “I’m so glad that didn’t happen here,” is a pyrrhic victory. Our tragedies have consequences beyond our borders, and this applies everywhere. We are all impacted in visible and invisible ways.

The surreal moment in Boston prompted me to reflect further on our inalienable interconnectedness and interdependence, and on how we might survive our collectively imperiled future. Many conversations I’ve had recently touch upon the overwhelming list of existential threats to democracy, to climate stabilization, to sentient life itself. Entangled in all of these conversations is the critical role technologies, wielded recklessly or thoughtfully, have played in accelerating or mitigating these challenges. Corporations and governments exhort us to take personal responsibility while remaining unaccountable for their outsized impacts. This asymmetrical accountability leaves us as individuals overcome with guilt, fear or distrust. We know these challenges are too big for any one of us to solve, so we continue to participate in the systems that harm us.

Motherboard, an AR future monument, appears as an abstracted human spine flanked by arterial, network-like structures fanning out from either side, hovering above Los Angeles City Hall. I selected this site as a symbol of dysfunctional centralized local governance and community care gone wrong. Some of the most formidable challenges we face as a city are mirrored on national level; a lack of shared civic and educational resources, an extreme wealth gap, unaffordable health care, food deserts, shade from the sun, limited affordable housing, gentrification, absent sanitation, biased policing, among others. None of these inequities occur in a vacuum, they are systemic, interrelated, and have developed over centuries from the colonizing origins of this country. In imagining a speculative future monument, I had to consider these current concerns in aggregate. Motherboard is inspired by models of efficiency: generative, decentralized computing power, the body itself, and other organic systems of support and communication present in tree roots and mycelium networks.

Mycelium, fungal colonies that form the connective tissue of all carbon-based life on earth, communicate warnings, transfer nutrients, and signal shifts in ecosystems to an infinite number of plants and organisms. As famed mycologist Paul Stamets says, “Mycelium is the mother of us all.” These largely invisible networks, similar in appearance to human neural networks, operate without the hierarchical bias so endemic to the human-centric, capitalist and hetero-patriarchal societies of Western traditions. The internet is often cited as an example of biomimicry - it appears much like visualizations of mycelium. The irony is that while we are “connected” to each other online, in the metaverse, or in any dematerialized shared space, unlike mycelium, we lose the essential recognition of each other as fellow humans facing a shared series of crises.

The motherboard, which often resembles a small city with its interlocking nodes and threads, is the backbone of any computer. It, like our human spines, connects systems and acts as an essential, multi-nodal infrastructure and armature. In both cases, without the networks they service, nothing functions. I thought of what it is colloquially to have a spine, and to be spineless in light of rampant misinformation, deceit and corruption. This monument is a love letter to functioning backbones, to true “trustless trust” and to empowering interoperability. Author Maggie Nelson has described being “mothered by many” and this monument springs from the poetics of a similarly de-gendered concept of nurturing, healing, fortifying, protecting, and providing of sustainable life. It re-imagines a redistribution of power, connected to policies which honor individual agency, mutual accountability and collaborative governance. It offers an ever-expanding ecosystem and a responsive restructuring of civic engagement, production and mutual aid.

As part of my practice, I think obsessively about technology and ethics; the unintended negative externalities, the moral imagination

they demand, the fluctuating protopic/dystopic potential of partnering with AI. While I don’t think we are yet living in an algocracy, algorithmic bias, Ad tech (advertising technology) and the data extractive tools of surveillance capitalism have led to two distinct cultural threats. The first is epistemic; witness the manipulated realities that ensued in the wake of Cambridge Analytica and the 2016 election. The ongoing erosion of a consensus reality has led, quite literally, to a denial of science, distrust of institutions, abnegation of personal responsibility, and ripe conditions for extremist violence. As any kind of epistemic justice atrophies, so too do shared values, such as community, love, compassion, and being present. The second relates directly to how we perceive ourselves in or out of community. With desires mapped, predicted, and algorithmically curated for us as individuals, we enter the perilous condition of what philosopher Rosi Braidotti calls, “hyper-consumeristic progessive individualism.”

In other words, when all perceived needs are addressed by technology, why would anyone care about or even notice the most vulnerable populations suffering the effects of systemic oppression? I would add, in the case of the red sun, why would we care about an entire region on fire, or countless other harms to Earth and its inhabitants? These are two results of technology being deployed with none of its transgressive or empowering potential. Hyper dependent on consumerist technologies, many of us are better controlled and contained; knowing, thinking and voting less while spending more and ignoring the welfare of others. Motherboard acknowledges the key of multiple relational bonds, relational systems and the core truth that whether we want to or not, we belong to each other and our survival depends on this epistemic reckoning. This monument proposes connective, hybrid organic human/AI tissue between types of labor and insight, strengths and weaknesses. We could re-humanize ourselves, paradoxically, if we wielded the tools of AI thoughtfully and without bias.

Motherboard exists as a love letter to systems outside of the hetero-patriarchy, a rejection of monocultural dominion. A project of decolonial feminism, it aims“ to facilitate transborder and international alliances,”

while modeling hybrid systems of support in Los Angeles. This artwork aims to generate alternate imaginings of thriving and equitable communities, valued plurality of cultures and contributions, mutual care, and ultimately, healthy survival and growth.

The root of the word matrix is” source or origin” and in Latin, simply, “mother.” Motherboard pays homage to a newly imagined matrix that might offer a way out and through the soaring inequities and challenges to authentic connection we face. What would a new operating system look like under these future circumstances? What if instead of complying with the laws of late stage capitalism, we maintained individual agency yet participated collectively in something that served a greater good? I believe that systemic change will depend on reclaiming our consciousnesses, looking to thriving regenerative networks of support that already exist in nature, and partnering with technologies freed from the most damaging of our entrenched human imperatives. The monument’s butterfly-shaped “wings” suggest an abstract embrace. Imagine the butterfly effect of such a future system.

-Nancy Baker Cahill, August 2021

P.18, Future Ethics by Cennydd Bowles

P. 29 Anthropocene Feminism, Rosi Braidotti

P. 7 A Decolonial Feminism, Francoise Verges

: Speculative Monuments for Los Angeles

Find the Encoded Futures article','published','public',60)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('liberty-bell','Liberty Bell','public_art',2020,'Six U.S. cities','*Duration of the work is approximately 1 minute 30 seconds, and it is recommended that viewers experience the full animation with sound.

When viewing the work please adhere to all social distancing guidelines as instructed by the CDC.

is a new public art project by Nancy Baker Cahill in augmented reality, presented simultaneously in six cities in the United States: Boston, MA, Charleston, SC, Philadelphia, PA, Rockaway, NY, Selma, AL, and Washington, DC. Liberty Bell will be on view from July 4, 2020.

, in partnership with 7G Foundation and the Jamaica Bay-Rockaway Parks Conservancy, a project of the Fund for the City of New York, Liberty Bell is an animated, monumental and richly sonorous augmented reality (AR) drawing in 360 degrees. The public artwork will be geolocated at a series of sites and experienced on smartphones and tablets through Baker Cahill’s free 4th Wall app. This project, roughly 15 months in the making, lives at the vibrant intersection of public art, social consciousness and tech.

In this polarized and tumultuous election year many concerns persist around the founding principles of American freedom and democracy. Inequality, structural racism, injustice, and the ability to vote are chief among them.

Inspired by the original cracked Liberty Bell in Philadelphia, the drawing hovers beyond viewers, swaying with the rich and layered sound of bells tolling. The Liberty Bell soundscape morphs from the rhythmic lulling of a tolling bell, into a harmonious and dissonant sequence of ringing as it becomes increasingly unpredictable and arrhythmic. Ranging from analog to synthetic, the sounds were compiled from a diverse array of historical moments and locations. The richly textured brushstrokes and bell sounds resemble loosely knitted threads that unravel and come together in an uncomfortable, but cohesive moment. They reflect the evolution and transformation of liberty over time into the complex reality we face today. Baker Cahill chose July 4, known as Independence Day, as a launch date to advocate for justice, civil rights and freedom

AR is impermanent, ephemeral, invisible to the naked eye and leaves no environmental trace. It is accessible to a broad audience through the ubiquitous use of smartphones and tablets. Community programming will be organized online and in-person when possible. Programming will include topical conversations by cultural leaders and community members from all 6 cities as they relate to current events. Providing a platform for conversation and access to the artwork is a crucial component of this project.

"From its origins in American history, “liberty” was only available to a certain demographic and came at great expense to others. You can’t have a conversation about freedom and not talk about the history of slavery and inequality in the United States. A bell can be a warning or a celebration; something spiritual or a wordless means of communication. In an age of pandemic, surveillance, injustice and disinformation, who is actually free? That’s the conversation we need to have."

“We are thrilled to present Liberty Bell in six different US cities this summer. While adhering to social distancing guidelines, it feels crucial to bring this important artwork safely to the public. Through a visual and sonic AR experience, Baker Cahill gives viewers the opportunity to reflect upon their personal experiences of liberty, freedom, injustice and inequality. We are honored to present this poignant work during such a remarkable time.”

- Casey Fremont, Executive Director, Art Production Fund.

Liberty Bell weaves a common thread between all six cities underscoring our interconnectedness and shared cultural inheritance. These historically significant and charged locations comprise an unprecedented activation spanning the Eastern seaboard of the United States.

Boston, MA: Boston Children’s Museum, Boston Cyberarts, Rose Kennedy Greenway, Boston Harbor Now; Charleston, SC: Center for Heir’s Property Preservation; Philadelphia, PA: Association for Public Art (aPA); Rockaway, NY: 7G Foundation, Jamaica Bay-Rockaway Parks Conservancy, The Rockaway Hotel, National Parks Service, NYC Parks, New York State Parks, Recreation & Historic Preservation, Rockaway Artists Alliance; Selma, AL: Brown Chapel African Methodist Episcopal (AME) Church; Selma & Dallas County Chamber of Commerce and Tourism Information, Washington, DC: Hirshhorn Museum and Sculpture Garden

BFA, Lisle and Sally Baker, Louise Baker Lee, Sharon Bowers, Phoebe Cole, Jesse Damiani, Justin Diener, Casey Fremont, Leah Fuentes, Saski Globig, Amy Lloyd McCarthy, Kathleen Lynch, Sam Maliszewski, Guy Martin, Gabi Mendoza, Christian Merfeld, Columbus Mitchell, Tyrese Mitchell, Anika Morris, Dakota Peterson, Rebecca Smerling, Jennie L. Stephens, Pastor Leodis Strong, Aaron Sullivan, Brett M. Wadford, Joshua F. Walden, Jeff Wright

— BOSTON —

On view in Boston above Fort Point Channel on the Harborwalk.

Boston was chosen for its role in one of the most complex and formative moments in U.S. history, the Boston Tea Party. Focused on early U.S. history, this location asks us to consider those who were granted rights, those who were excluded, and the subsequent legacy of colonization. Liberty Bell invites viewers to reflect on one of the early struggles for American liberty and independence while questioning how the Boston Tea Party shaped the future of the country, and the contested definition of freedom. In other words, freedom for whom?

On site, the AR artwork’s ephemerality illuminates the fragile moment we face as a nation. In this location, accessible to a public audience, Liberty Bell invites viewers the opportunity to consider their own experiences of liberty, freedom and injustice and inequality. The drawing floats over the water of the Channel.

Go to Fort Point Channel and head to the middle of the Harborwalk between the Congress and Seaport bridges on either side for best viewing. The drawing floats over the water of the Channel. This site is wheelchair accessible.

Ideal viewing area is indicated within the red boxes:

— CHARLESTON —

Photo by Brett Wadford, Charleston

On view in Charleston at the Battery near White Point Garden, facing Fort Sumter.

Charleston is an ideal location for the

project. Colloquially deemed ‘The Holy City’, Charleston is where 40% of U.S. slaves entered the country.

rings as a powerful reminder of the region’s past, present and future from the promenade just across the street from White Point Garden. The drawing hovers over the ocean with Fort Sumter in sight, the historic location of the first two battles igniting the American Civil War. Today, echoes of the Civil War continue to foment an ideological divide throughout the United States. This location resonates with

as it connects the project to America’s divided past and the lasting effects of slavery. Equally, it embodies our current cleft political and cultural reality, heightened by increased polarization and consequences of inequality.

“The Center for Heirs’ Property Preservation is proud to be a local partner on the

project. We are a non-profit whose mission is to protect heirs’ property and promote the sustainable use of land to build generational wealth for underserved families. It seems like a perfect time for this public art project as people are questioning the very definition of liberty and justice for all.

The core of our mission is simply justice – social, economic and environmental. We believe the American dream needs to be colorblind.

The Center has spent the past 15 years advocating for racial equality and our mission will continue into the future demanding justice.” –

Dr. Jennie Stephens, CEO, Center for Heirs’ Property Preservation

DIRECTIONS FOR VIEWING ARTWORK

From White Point Garden (standing at the Battery), as close as possible to the fence by the water, facing Fort Sumter. This site is wheelchair accessible.

Ideal viewing area is indicated within the red box:

— PHILADELPHIA —

Photo by Darian DiCianno/BFA.com courtesy of Art Production Fund, Philadelphia

On view in Philadelphia over the Benjamin Franklin Parkway and the steps of the Philadelphia Museum of Art

The historic Liberty Bell in Philadelphia seeded the inspiration for this project. Because the Liberty Bell is one of the most widely recognized symbols of American independence and freedom, Philadelphia is an essential location for the artwork. Most historians believe the Liberty Bell was one of many bells that rang on July 8, 1776, a few days following the signing of the Declaration of Independence. In the 1830s, the bell became a symbol for abolitionist societies who called it the “Liberty Bell”, the name we know it by today. As a metaphor, the cracked bell mirrors both the brokenness of many Americans’ current and past experience of liberty and its intended democratic goals. It also reflects an evolution of declared independence into unchecked nationalism of today. Liberty is inextricably linked to equality. The abolitionist origins of Liberty Bell inform the ethos of the project, which acknowledges that the founding fathers fought for the liberty of “men,” while enslaving others.

From the steps outside the Philadelphia Museum of Art and on Benjamin Franklin Parkway. Best vantage points are from the bottom of the steps and the Oval Park across MLK Drive. Drawing will appear overhead. This viewing location is wheelchair accessible.

Ideal viewing area is indicated within the red boxes:

— SELMA —

Photo by Columbus Mitchell, Selma

On view in Selma at Songs of Selma Park at the foot of Edmund Pettus Bridge.

floats above the Alabama River, best seen from Songs of Selma Park, at the foot of the historic Edmund Pettus Bridge. This location is essential to the project, which aims to address voting rights and the ongoing fight for civil rights. The Songs of Selma Park was selected for its proximity to the Voting Rights Museum, the Edmund Pettus Bridge and the Selma to Montgomery National Historic Trail. The historic trail marks the three Voting Rights marches led by Dr. Martin Luther King Jr. in 1965 to end discriminatory voting practices targeting Black Americans. The Edmund Pettus bridge is a National Historic Landmark marking the brutal Bloody Sunday beatings of civil rights marchers during the first march. Liberty Bell invites viewers to consider discriminatory practices today that prevent certain Americans from exercising their right to vote, denying access to an established national freedom. The project hopes to provoke an awareness of gerrymandering, hacking, misinformation-- all of which inhibit citizens from exercising their civic rights.

embodies our current cleft political and cultural reality, heightened by increased polarization and the consequences of inequality.

DIRECTIONS FOR VIEWING ARTWORK

Go to “Songs of Selma” Park at the foot of the Edmund Pettus Bridge in Selma (with Water Ave. behind you) and position yourself at the park’s edge, close to the Alabama River. Drawing will appear to the left of the Edmund Pettus Bridge over the river.

Ideal viewing area is indicated within the red box:

— WASHINGTON D.C. —

On view in Washington, D.C. above the reflecting pool between the Washington Monument and Lincoln Memorial.

drawing is geo-located over the reflecting pool between the Washington Monument and Lincoln Memorial. As the capital of the United States, Washington D.C. is a crucial location for the

project. Historically declared independence has evolved into unchecked nationalism. In the wake of ongoing police brutality and pandemic, these political and cultural schisms directly affect our rights as American citizens. Recent civil rights protests and the unconstitutional use of federal force illuminate the charged fault lines in the heart of our governing institutions. In D.C.,

prompts viewers to consider challenges to our individual rights, while providing an opportunity for thoughtful reconciliation through a shared and democratized public art experience.

sways above the pool, AR shadows are cast over the water. At this site, the abstract drawing evinces the polarization that has allowed for civil war, slavery, and extreme economic inequality. The image creates a literal and metaphorical reflective experience for viewers as they are invited to question the very concept of liberty, and liberty for whom.

DIRECTIONS FOR VIEWING ARTWORK

With the Lincoln Memorial behind you, stand at the edge of the reflecting pool, facing the Washington Monument.

Ideal viewing area is indicated within the red box:

— ROCKAWAY —

The Rockaway Hotel is the official project hub for Liberty Bell in Rockaway, NY.

drawing, as well as a companion AR artwork created exclusively for The Rockaways. The companion drawing is geolocated over the Atlantic Ocean and is visible from Rockaway beach at 108th street, the rooftop of The Rockaway Hotel (opening Summer 2020), as well as along the ruins remaining at Fort Tilden. This particular composition appears as an abstracted wave with a soundscape of a single bell tolling. The Rockaways drawing, thematically connected to the first, considers liberty as it relates to site specific climate change.

“The Rockaway Hotel is thrilled to sponsor this dynamic project. We believe that art can be the connective tissue of a community and through our community partnerships we hope to provide new opportunities for cultural enrichment to visitors and locals alike.”

- Michi Jigarjian, Partner and Chief Social Impact Officer, The Rockaway Hotel

“JBRPC’s commitment to free public art in Jamaica Bay and Rockaway parks has allowed countless visitors to experience unique works of art in our parks since 2013. We are delighted to partner this summer with Art Production Fund and Nancy Baker Cahill on this cutting-edge exhibition. Baker Cahill’s Liberty Bell will allow park visitors to experience an augmented reality artwork, curated specifically for a number of Rockaway parks, and reflect on the natural beauty of these spaces along with accompanying sound,”

- Alex Zablocki, Executive Director, Jamaica Bay-Rockaway Parks Conservancy.

Enter the Fountain Avenue, Brooklyn, entrance of the park either by walking, bike or car (limited parking). Enter the park and follow signs toward Fountain Pier, facing the open Jamaica Bay. The drawing will appear over the water. The artwork is also viewable from the Skybowl at the park.

Note: this is a remote location, roughly a ten-fifteen minute walk from the parking area. This site is wheelchair accessible.

Ideal viewing area is indicated within the red box:

Enter Beach Channel Drive at Beach 108th Street, Rockaway Beach, and position yourself to the left of the Rockaway Ferry landing at the water''s edge. Drawing will appear over Jamaica Bay. This site is wheelchair accessible.

Ideal viewing area is indicated within the red box:

Rockaway Beach at Beach 108th Street:

The Rockaway Beach boardwalk at Beach 108th Street and Shore Front Parkway, and head slightly left toward the dunes and water. Drawing will appear over the ocean.

This site is wheelchair accessible.

Ideal viewing area is indicated within the red box:

Fort Tilden: Battery Harris East:

Enter the park and head toward the Rockaway Artists Alliance Studio 7 Gallery (Murray Road and Hero Road, Breezy Point). Head west down Murray Road toward Battery Harris East, an abandoned military installation, and directly face the battery; drawing will appear overhead. Parking is not available at the park. Note: This is a remote location, roughly a ten minute walk from the gallery. Wheelchair accessible from the Rockaway Artist Alliance gallery only.

Ideal viewing area is indicated within the red box:','published','public',70)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('facebook-air-program','Ever Now','public_art',2019,'Facebook HQ, Los Angeles','EVER NOW is a permanent immersive analog and AR activated drawing installation. The installation was created for a 40’ wall at the Facebook Los Angeles headquarters through the Facebook Open Arts Program in 2020. Using the 4th Wall app, mixed media drawings trigger a related AR experience that fills the entire space in front of the wall. The installation also includes a massive 360° animated AR experience permanently geolocated outside.

EVER NOW AR Wall Activation, Facebook AIR Program, Los Angeles 2019

EVER NOW AR Outdoor Activation, AR drawing in 360, Facebook AIR Program, Los Angeles, 2019','published','public',80)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('drawings','Dimensional Drawings','public_art',null,null,'4th Wall features a series of original dimensional drawings by Nancy Baker Cahill. Created in virtual reality (VR), the drawings were translated into augmented reality so 4th Wall users can place them all over the world.

EVER NOW dancer, originally commissioned by Facebook AIR

For more dimensional drawings go to @4thwallapp and check out #4thwallapp on Instagram. Dimensional drawings are found under AR Artworks in the 4th Wall App.','published','public',90)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('border-wall','Border Wall','guest_ar',2022,'Oaxaca City, MX','“WHAT WE ARE SEEING IS JUST THE MONSTER’S TAIL, AND THERE IS SOMETHING TERRIFYING ABOUT SEEING THE TAIL OF A BEAST WHOSE FULL CONTOURS AND CAPACITY AND DISPOSITION WE DO NOT YET KNOW.” *

--Wall Disease: The Psychological Toll of Living Up Against a Border, by Jessica Wapner

AR Border Wall, Tanya Aguiniga, 2022 Oaxaca City, MX via 4th Wall app

Introduction to the AR Border Wall Project, Tanya Aguiñiga and 4th Wall

“The U.S./Mexico border corrodes our responsibility to each other. I’ve witnessed the death, destruction, torment it causes with my own eyes as a child, as a teenage girl and as a mother. It enshrines white supremacist violence against brown bodies, cultivates misogyny, and escalates capitalist abuses of land and people.

The U.S./Mexico border is a people, a place, an idea, a physical thing.

As a transnational U.S. citizen, I probe the complicity of all the communities I represent in maintaining this systemic oppression and how the border is used to dehumanize in all its ways.

All forms of our border are constantly in flux, changing in response to national/state/local politics in the U.S./Mexico, current conditions in the counties of origin where people are forced to migrate from, as well as global warming and violence.

Causing further harm to people who are experiencing hardship should never be a choice we make.

We must work together and center the narratives of the most vulnerable folx in the borderlands, people seeking safety.

If they are safe, we are all safe.

The physical border wall causes death, family separation, mental health issues, increases violence, promotes human trafficking and ravages the environment.”

Tanya conceived of the The AR Border Wall Project as an invitation for viewers to confront the physical border wall in augmented reality in the environment of their choosing. In doing so, she hopes it will allow viewers to imagine the border wall at scale invading their sacred space, keeping them from that and whom they value and love. In her words, “To feel what millions of us feel, being in proximity to it… being separated, bifurcated, reminded, excluded, othered, murdered.”

The artist’s daughter, pictured on the other side of the AR Border Wall

“I grew up in Tijuana, Mexico, blocks away from the US/Mexico Border Wall. From childhood to adulthood, my family and I have lived with the wall and witnessed how it has physically changed as US policies have become more hostile towards Mexico and immigrants. During my lifetime, the wall has gone from a chain link fence to a brutal structure that strategically kills migrants by forcing them to cross through the Sonoran Desert (

). Recently, it has been made even more dangerous through its increased height of 30 feet, making a drop from the top of it

that did not previously exist. In some locations, the wall has been doubled, creating a deadly corral to ensure entrapment.

My art practice has been indelibly shaped by growing up in proximity to the wall and witnessing the suffering it causes in my community.

The AR Border Wall Project came out of my desire to show people who may have never seen the actual border wall, what it is like to stand in front of our current 30 foot tall US/Mexico Border Wall.

It’s our responsibility to hold each other accountable. Walls exist all around us, some are visible, some are inside us, and some are belief systems. In all the walls we build, whether physical or invisible, we must learn to be kind, respectful and responsible to one another and acknowledge our profound interdependence.”

“During my 25 years of participating in border art and related activism, I have spent much of that time explaining to people in both the U.S. and Mexico what the physical border looks like, what life is like at the border, and for many years, having to confirm the existence of an actual wall. While in reality, millions of people live right up to the border wall on both the US and Mexican sides, the border wall exists mostly out of view of Americans’ backyards. In most images we see of the wall in the media, it occupies an empty desert landscape or inhabitable mountainous area. This visual distance from the wall --whether real, imagined, or staged-- creates psychological distance from the people it harms, allows us to dehumanize the border region and fosters false narratives in our mind of who and how people are affected by the wall.” – Tanya Aguiñiga, 2022

To create the most realistic experience possible, artists Tanya Aguiniga and Nancy Baker Cahill went to Tijuana multiple times to accurately measure and scan the newest border walls. Baker Cahill’s team at Shaking Earth Digital built a digital model based on the data the artists

collected and integrated it into the 4th Wall app platform where it is now accessible to anyone who downloads the free app (more information below). The 4th Wall app provides an invaluable collaborative tool for being able to share the embodied and emotional experience of standing at the foot of the current border wall, in any geographic location, with people for whom the border is physically and psychologically distant. In this way, the AR Border Project builds greater understanding of our borderland realities and invites deeper examination of our relationship to maintaining these oppressive systems.

The wall itself causes death and separation of migrant families, mental health issues for those living in proximity to it, and environmental damage to flora and fauna. The AR Border Wall project places the wall within arm’s reach, bringing its presence immediately and intimately into our daily experience. By directly confronting the wall’s materiality (our last wall was made of jet landing mats used in the Vietnam and Persian Gulf Wars), its scale, and looking through the wall, the project asks; are we better able to imagine ourselves in the shoes of those affected by the wall? Do we feel any differently about how we as humans treat each other or the earth?

To experience this project, you need to first download the 4th Wall App from the

using wifi (wifi is not required after initial download). In order to take pictures and record videos within the app, you will need to allow all permissions; no user data is collected by the app.

Once inside the 4th Wall App, follow these steps:

Tap “Tanya Aguiñiga- Border Wall”

Tap the phone screen to place the border wall somewhere important to you.

-You can then touch the wall to move it, twist to rotate it, pinch to scale it’s width

-It is best experienced on flat ground, without obstacles in its way.

Once you have placed the wall in a place that is important to you, you can take a picture by tapping on the camera icon, or you can record a video by tapping the video recorder icon.

Consider sharing your collaboration on the project by tagging @tanyaaguiniga @4thwallapp @nancybakercahill on Instagram so we can share your captures widely

Suggestions of where to use it

You will get the best experience if you use the app on a flat surface and are outside. It may be overwhelming to see yourself separated from things you love, so try to first place the border wall in a more neutral place, to get used to how it looks and feels, and to practice scaling the wall up or down and making it look realistic. If using it as a performance tool is inspiring to you, please do so.

- Look up, around, walk through the wall.

-Try having another person on the other side of the wall. How does it feel to be separated from them?

-Try placing the wall in a place that looks very different from the border wall images we see in the media, like a very populated or important place in your town. How does seeing the border in combination with an American town or with people going just about their day change your idea of living with a border?

Things to think about when using it

How did seeing the actual wall and spending time with it feel different with and without other people in it?

How did experiencing a separation from people and things that you care about make you feel about the border, and those who are affected by it?

Tanya Aguiñiga was born in 1978 in San Diego, California, and raised in Tijuana, Mexico. An artist, designer, and craftsperson, Aguiñiga works with traditional craft materials like natural fibers and collaborates with other artists and activists to create sculptures, installations, performances, and community-based art projects. Drawing on her upbringing as a binational citizen, who crossed the border daily from Tijuana to San Diego for school, Aguiñiga’s work speaks of the artist’s experience of her divided identity and aspires to tell the larger and often invisible stories of the transnational community.

About 4th Wall / Nancy Baker Cahill

Nancy Baker Cahill is a new media artist who examines systemic power, selfhood, and embodied consciousness through drawing and shared immersive space. She is the Founder and Artistic Director of 4th Wall, a free Augmented Reality (AR) art platform exploring resistance and inclusive creative expression.

Special thanks to the team at Shaking Earth Digital for their creation of the AR asset.','published','public',10)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('encodingfutures','Encoding Futures','guest_ar',null,'Los Angeles, CA','All pieces are on display indefinitely in Los Angeles, CA.

This summer, with a grant from the Mellon Foundation and in editorial partnership with Philadelphia-based Monument Lab’s Bulletin, Oxy Arts launched Encoding Futures: Speculative Monuments for L.A., a remote summer residency program. Over a 3-month period, artists Nancy Baker-Cahill, Audrey Chan, Joel Garcia with Meztli Projects and Patrick Martinez researched and developed original virtual monuments to be geo-located at sites across Los Angeles. The monuments are accessible for the public to view through the 4th Wall app.

The prompt for the residency was to conceive a blueprint for a site-specific imagined future, and consider technologically enabled transformations that might shape the future of the site. The artists considered past and present social, economic, and cultural inequities, power imbalances, and other forms of subjection, with the hope of foregrounding a radically equitable future sited in an emergent present; and in the process contemplate if and how new forms of monuments can reckon with the way monuments have functioned as agents of oppression.','published','public',20)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('joel-garcia','the wolves who did not perish...','guest_ar',null,null,'the wolves who did not perish went to other lands

by Joel Garcia (Huichol) is a 360-degree panoramic AR landscape that hijacks the use of AI (artificial intelligence) paint apps and augmented reality to propose a landscape returned to the original stewards: the Serrano and Tataviam constellation of tribal communities and villages by introducing concepts of decolonization, Land Back, Indigenous Stewardship to imagine the return of wildflowers to open spaces in Los Angeles County, and the removal of mono-crop farming and cattle from all available land. Or what an elevated water table in an area like Lancaster can do to reverse trophic cascades as was the case when wolves were reintroduced to Yellowstone National Park. Saving the environment and bringing balance to a quickly deteriorating ecosystem.

Apps like MidJourney present a highly problematic premise, due to its inherent racist, patriarchal, and settler-colonialist data set that allows users to generate images referenced from a database using visuals and information that unfortunately center white supremacy and produces outcomes that favor; light skin, and skinny bodies, and where all open space is filled with mono-crop agriculture, or apocalyptic realities.

As Indigenous Peoples, we are not disconnected from the land. We are the land and the land is us. This isn’t meant to be symbolic, but literal and true, for our ancestors are buried in our homelands. When solar farms are planned for the open space of the desert, they disrupt the ancestors resting below the surface. When development occurs in downtown areas, they exhume the bodies of loved ones to erect buildings. When lands are “domesticated” and commodified for “preservation”, such as State and National Parks, Indigenous peoples are removed from the land. Land restoration should include restoring its people, and the stewardship practices informed by thousands of years of knowledge-building.','published','public',30)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('in-plain-sight','In Plain Sight','coordinates',2020,'Nationwide (skytyping)','ART FORCING CHANGE: July 3-4, 2020 LOOK UP

Once on site, tap "Coordinates" to experience In Plain Sight.

4th Wall is honored to host artist-run AR skywriting as part of

a project organized by artists rafa esparza and Cassils.

80 artists joined together to launch

​ – ​A stunning effort to make visible the injustices of the largest immigration detention system in the world.

In Plain Sight''s collective of artists – representing an array of ages, gender presentations and subjective lived experiences that have come together in solidarity to help abolish immigrant detention. ​ICE detention is the practice of incarcerating immigrants–from those who have just arrived to those who’ve lived in the U.S. for years–while they await a determination of their status or potential deportation. Various reports detail horrifying conditions. ​The federal government wastes more than $25 billion each year on ICE and Customs and Border Protection (CBP) to profile, detain and deport immigrants. Fairness, freedom, opportunity, and respect for human rights should be at the core of our immigration system.

YOU CAN HELP END IMMIGRANT DETENTION

Get to know organizations that serve the immigrant community:

Go to: South Texas Detention Complex, 566 Veterans Drive, Pearsall, TX 78061

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Tsuru for Solidarity and Karen Ishizuka

Go to: Santa Anita Assembly Center, Santa Anita, CA

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration.

Go to: 201-299 San Dario Ave, Laredo, TX 78040

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: 218 S Laredo St, San Antonio, TX 78207

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: Geo Group Headquarters, 6100 Center Drive, Los Angeles, CA 90045

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Coalition of Central American Community Organizations

Go to: Macarthur Park, Los Angeles, CA 90057

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: Immigration Court, 1 Canal Street, New Orleans, LA

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: 441 Bauchet St, Los Angeles, CA 90012

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: 425 Golden State Ave, Bakersfield, CA 93301

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: Northwest Detention Center, 1623 E J St, Tacoma, WA 98421

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

"#FreeThemAll, #LibertdadParaTodos"

Go to: ICE Detention Center, 10250 Rancho Rd, Adelanto, CA 92301

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: Yuba County Jail, 215 5th St, Marysville, CA 95901

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration

Go to: Elizabeth Detention Center, 625 Evans Street, Elizabeth, NJ 07201

Part of, In Plain Sight, conceived by Cassils and rafa esparza, a coalition of 80 artists fighting immigrant detention and the culture of incarceration','published','public',10)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('battlegrounds','Battlegrounds','coordinates',null,'New Orleans, LA','is a city-wide, site-specific, augmented reality (AR) public art activation in New Orleans, which interprets the word "Battleground" as broadly as possible.

We have geo-located 30 thematically related artworks in AR created by 24 local artists at the contested locations of their choosing. These sites include polluted waterways, confederate statues, gentrified lands, levees, prisons, neglected neighborhoods, slave trade sites, formerly indigenous territories – to name just a few. Battlegrounds offers a new type of subversive public art which asks no permission, but attempts to prompt thoughtful discourse around the most urgent issues the artwork and sites represent for the larger community they serve. This is an unapologetically political project, and does no environmental harm in a region of the country which is most vulnerable to climate change. Community programming and workshops are essential to this project.

Nic Aziz, Family Dinner: Finger Clickin’ GOOD, 2019

Ron Bechet, A Love Supreme, 2018

Allison Beondé, Bedside Flowers, IV, 2018

Jennifer Blanchard, The Corps Is Careless, 2019

Jennifer Blanchard, The Best Laid Plans of Mice and Men, 2019

Lily Brooks, Kudzu and Tree near Site of Kugler Cemetery, May 22, 2019

Lily Brooks, Dow Chemical Through Open Bays, May 22, 2019

Keith Calhoun, Sunlit Nightmare, 2006

Keith Calhoun, Travis Trumpet Black Hill Funeral, 2015

Hannah Chalew, Toxic Ecology, 2019

Dawn DeDeaux, Acid Frog Rising, 2019

Dawn DeDeaux, ACID FROG SEARCH AND RESCUE: THE NEW ORLEANS SUPERDOME, 2019

Jan Gilbert, Call to DisArm: Yearbook, 2011-19, Snow Job sound by Metronome the City

L.Kasimu, The Vanishing Black Lounge, 20

Ana Hernandez, SLAVERY TIME, 2016

Horton Humble, Devil''s Drum, 2017

Chandra McCormick, Holy Family Spiritual Church

Chandra McCormick, Grandma Phennie and Keith,1993

Leah Floyd + Cristina Molina, River River, 2018, Still from video.

Jennifer Odem, Rising Table, 2018

Rontherin Ratliff, Never The Twain Shall Meet, 2017

Kristina Kay Robinson, Temple of Color and Sound, 2019

Jonathan Traviesa, New Cartographics, II, 2019','published','public',20)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('defining-line-sites','Defining Line','coordinates',2018,'Los Angeles, CA','Carolina Caycedo, Curative Mouth, 2018

Andrea Chung, Filthy Water Cannot Be Washed, 2017

Debra Scacco, Origin and Destination Study, 2018

Tongva Elders Julia Bogany & Marissa Aranda, The Journey of Visibility, 2018

Beatriz Cortez, Tzolk''in, 2018

Nova Jiang, Cartographer, 2018

Gala Porres-Kim, Supplement to Ballona Discovery Park Informative Signs

: a groundbreaking, AR public art exhibition explores how lines connect, divide and define communities. Co-curated by Nancy Baker Cahill and Debra Scacco, the exhibition places powerful, site-relevant works in AR along the Los Angeles River, encouraging visitors to explore, reconsider and interact with the river, and to recognize the key role this vital line plays in shaping the history and experience of moving through Los Angeles.

Andrea Chung, Filthy Water Cannot Be Washed, 2017

34.112657260378334, -118.2644973556441

Go to the LA River, up the path at the end of Ferncroft Road by the Hyperion Bridge, Atwater Village.

Beatriz Cortez, Tzolk’in, 2018

34.10528698497682, -118.24265593242319

Walk approximately .4 miles or ten minutes into Bowtie Project, and face the river. Courtesy of Clockshop, photo by Gina Clyne.

Nova Jiang, Cartographer, 2018

Go to or near the viewing bridge, and face downtown Los Angeles, LA State Historic Park.

Go to Cesar Chavez Bridge, best vantage from the corner of Misson and Cesar Chavez.

Carolina Caycedo, Curative Mouth, 2018

34.0748019973322, -118.2250733502375

*Best Vantage-- Stand right up against the fence at Grand View Lookout, Elysian Park.

Tongva Elders Julia Bogany and her great granddaughter Marissa Aranda, The Journey of Visibility, 2018

34.0717192039208, -118.22698591904907

This artwork includes SOUND! Be sure to turn on your sound and turn up the volume or use headphones. Go to: 1799 Baker Street and look directly over bridge.

Debra Scacco, Origin and Destination Study, 2018

34.07067351861235, -118.22461613528412

Go to the end of Naud St., at the train tracks, and point camera over bridge.

Gala Porras-Kim, Supplement to Ballona Discovery Park Informative Signs, 2016

33.96919505915605, -118.42376965284757

Go to Ballona Discovery Park, 13081 Bluff Creek Dr, Playa Vista, CA. Pass signs on your right and Gala''s artwork will appear just to the left, in front of you.','published','public',30)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('texas-biennial','Texas Biennial','coordinates',null,'Texas','We are using art and technology to permanently place these powerful sky typed phrases over four sites in Texas, for IPS’s contribution to the Texas Biennial. We premiered original AR skyptyped messages by Alok Vaid-Menon, Cruz Ortiz, Devon Tsuno, and Viva Ruiz using the 4th Wall app, placing them over contested political sites in Texas in perpetuity.

These AR artworks are an extension of In Plain Sights OG action: Over the 4th of July Weekend, in 2020,

,a coalition of 80 artists, united to create a public artwork dedicated to the abolition of immigrant detention and the United States culture of incarceration. A a nationwide public artwork and performance, In Plain Sight launched the nation''s skytyping fleets to spell out artist-generated messages in water vapor, legible for miles. These messages were typed in the sky over detention facilities, immigration courts, borders, and other sites of historic relevance. As the planes soared, they made visible in the sky what is too often unseen and unspoken on the ground: the appalling, profoundly immoral, imprisonment of immigrants. In partnership with over 30 organizations, In Plain Sight used art and engagement to break through this wall of secrecy, exposing to public scrutiny the sites of detention centers.

YOU CAN HELP END IMMIGRANT DETENTION

Get to know organizations that serve the immigrant community:

Curated by rafa esparza and Cassils.','published','public',40)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('mushroom-cloud-la','Mushroom Cloud LA','archive',null,'Santa Monica Pier, Los Angeles','Mushroom Cloud is on display in Los Angeles, CA at the Santa Monica Pier

Mushroom Cloud LA / Proximities

In the face of ongoing catastrophic climate news, I find myself vacillating between abject despair and stubborn optimism. The Mushroom Cloud Project was forged in that dynamic nexus and dwells in both spaces simultaneously.

I created an animated AR artwork of a mushroom cloud over the ocean to underscore both the destruction and fragility of all interdependent ecosystems, and to signal human responsibility. As a destabilized ocean stealthily encroaches on all coastlines, the mushroom cloud by contrast arguably remains the most recognizable symbol of man-made cataclysm. Our extractive disrespect for nature has turned nature against us, and we are unprepared for its impact. The AR artwork was originally commissioned by Aorist Art for Miami, FL with the intention that it would subsequently travel to endangered waterways across the globe. It is now situated off the end of the Santa Monica Pier in Los Angeles.

The AR drawing explodes up from the Pacific ocean surface and then transforms overhead into a cloud of a different kind; a resilient and generative mycelial network (fungal colonies which form the connective tissue of all carbon-based life on earth) in the sky. I’m considering the aftermath. How might we survive our imperiled future without coordinated leadership? And if current models are failing to produce that leadership, where should we turn?

I have summoned the decentralized and equitable model of mycelium once before, in a recent AR monument geolocated over Los Angeles City Hall, imagining a new civic accountability rooted in efficient regeneration and community care. In Mushroom Cloud LA, I want to extend this dialogue into the threat of extinction — a morbid subject of increasing urgency. This new iteration is designed to address twin climate crises of the West Coast: rising sea levels and unprecedented wildfires, both of which increasingly converge with uncomfortable proximity. A series of digital and analog artworks related to the project will be included in the project’s west coast debut, including a video sound collaboration with artist Amelia Winger-Bearskin. ﻿To support the action-oriented, collaborative goals of the project, 10% of the proceeds from any artwork sale will go to Winger-Bearksin’s Wampum.codes initiative, which gives financial support to indigenous innovators aiding Land Back Movements and Indigenous Sovereignty Economies. Winger-Bearskin, who is Seneca-Cayuga Nation of Oklahoma (Iroquois/ Haudenosaunee) and is an artist and advocate for the responsible use of technology, has long been a leader in imagining and implementing systems of mutual aid and climate justice. She hopes to return land/resources/leadership to indigenous custodians of Turtle island.

Each interaction with the project represents a stage of engagement and participation in a newly imagined system of accountability. In collaboration with art attorney Sarah Conley Odenkirk, we are deploying the transparent, contractual language of blockchain in a web 3-friendly “network blueprint” to frame value as ethical values, to highlight Winger-Bearskin’s work, and to ask collectors to seed regenerative networks of care by gifting one or more of the fire “node” sculptures to a person or people to whom one is deeply connected. These artworks/ experiences might be more widely distributed as an appeal to build infinite hyphae, the branching filaments of mycelium. Slowly but powerfully, we could grow a supportive network, like mycelium, based on self-repairing structures. By blanketing the sky with this poetics of interconnectedness, I invite viewers to perceive a multinodal, communal, often invisible cloud — one that might privilege interdependence and generosity. With reconceived accountabilities, perhaps we could prompt a productive balance of grief and hope, shattering and coalescing, decomposition and rebirth.','published','public',10)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('legacy','Legacy','archive',null,'SXSW','Legacy, originally commissioned by SXSW, illustrates the calamitous forces of climate disaster and dislocation by animating an abstracted tree as it twists, breaks apart, and coalesces. Formally the drawing transitions from organic bark-like marks, to inorganic, metaphorically urban, glass and mirror fragments. Using original digital mark making to render organic forms underscores the artist''s intention to highlight unnatural developments of all kinds. Accessed via smartphones and tablets, the monumental drawing remains invisible to the naked eye, and leaves no physical trace. Legacy emerged from Nancy Baker Cahill’s intention to realize the synthesis of ideas, technology, and art to transform awareness about the urgent and interrelated effects of inequality and human-centered decision making. The drawing attempts to push new media in uncharted directions, and prompt discoveries related to the (re)evolution of nature, and the accelerated consequences of human intervention and impact. Legacy will be shown in Berlin as part of an exhibition at Synthesis Gallery and over the Pacific Ocean as part of Baker Cahill’s solo show at Honor Fraser Gallery.','published','public',20)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

insert into public.projects (slug,title,category,year,location,description,status,visibility,sort_order) values
  ('desert-x','Desert X','archive',null,'Coachella Valley, CA','were both visible in the specialized

. These augmented reality works in the Coachella Valley create awareness of past, present, and impending environmental disaster leaving no physical trace.

Located at the Salton Sea Recreation Area Visitor Center, Salton Sea, Mecca, CA

Located in the background of Palm Springs Wind Farm, Tipton Road, Whitewater, CA','published','public',30)
on conflict (slug) do update set title=excluded.title, category=excluded.category, year=excluded.year, location=excluded.location, description=excluded.description, status=excluded.status, visibility=excluded.visibility, sort_order=excluded.sort_order;

-- ===== COVER IMAGES =====
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_4a6322526c7c4bd8bd519e27f969a3fcf003.jpg' where slug='stone-speaks';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_5c24d59bcb9a4bd1aa50320d1825c2fbf003.jpg' where slug='mushroom-cloud-rise';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_f867fcf106b34b24a3818a46ed8718c4f003.jpg' where slug='mushroom-cloud-miami';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_ebb72a981c804ad28b99d55fbfa7ef85f003.jpg' where slug='corpus';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_f1cec3fffbf4492c937ea34c89b081f8f003.jpg' where slug='siren-songs';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_e3bc88631b4c4c9684a6ce5d4ae5e8b0~mv2.jpg' where slug='motherboard';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_2d96d43b87bd4ecc9963eca42e1b7ef5f003.jpg' where slug='liberty-bell';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_4329099e5c0048d5bf10fb5a35387d46~mv2.jpg' where slug='facebook-air-program';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_240a5725ca14483da45b792537752783~mv2.jpeg' where slug='border-wall';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_d88ba0d1231a47bd8affb36b3130451d~mv2.jpg' where slug='encodingfutures';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_4d1ff3d7e6c544d496eea02a2ffa041bf003.jpg' where slug='joel-garcia';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_bf491fd97e7844bda0861030f8cfb351~mv2.jpg' where slug='in-plain-sight';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_1ccf3d5cc221430983b04fac4c36c704~mv2.png' where slug='battlegrounds';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_23f38706a0344046b441a6cb9256506c~mv2.jpg' where slug='defining-line-sites';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_2cdcf7b987094fba91ef04f33cfe5352~mv2.jpg' where slug='texas-biennial';
update public.projects set cover_image_path='https://static.wixstatic.com/media/96feaf_042e87044da24f9d9b0af475f1b373dbf003.jpg' where slug='mushroom-cloud-la';

-- ===== GALLERY MEDIA =====
-- Clear existing imported media for these projects, then re-insert.
delete from public.project_media where project_id in (select id from public.projects where slug in ('stone-speaks','mushroom-cloud-rise','mushroom-cloud-miami','corpus','siren-songs','motherboard','liberty-bell','facebook-air-program','drawings','border-wall','encodingfutures','joel-garcia','in-plain-sight','battlegrounds','defining-line-sites','texas-biennial','mushroom-cloud-la','legacy','desert-x'));
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e9662cef27d749d6bed85d4d52e53cbcf003.jpg',0 from public.projects where slug='stone-speaks';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_2c83931040964b9daf3646b8a136f3a5f003.jpg',1 from public.projects where slug='stone-speaks';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_f0c7ad15c83c4a73b7904109a670e321~mv2.jpg',0 from public.projects where slug='mushroom-cloud-rise';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_37256e6ee125488598b77e775c0e785df003.jpg',1 from public.projects where slug='mushroom-cloud-rise';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_51927b18cd764a2abe35ff2291a6d316~mv2.png',2 from public.projects where slug='mushroom-cloud-rise';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_fcef0ebe224a401a93f52b48481073b4f003.jpg',0 from public.projects where slug='mushroom-cloud-miami';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_ea2f083793f04f19a9cdddf76d78f3d0f003.jpg',1 from public.projects where slug='mushroom-cloud-miami';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_d0e29863330e40e795ed92f370bd51fb~mv2.png',2 from public.projects where slug='mushroom-cloud-miami';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e121c95fe27e450abf2b68912ff31606~mv2.png',3 from public.projects where slug='mushroom-cloud-miami';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_871e0b8e0d1243febe05c509f8533cf3~mv2.png',4 from public.projects where slug='mushroom-cloud-miami';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_982123436ee647f09aaac49d1333a532f003.jpg',0 from public.projects where slug='corpus';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_5285ae391330485493b44dd919185137f003.jpg',1 from public.projects where slug='corpus';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_f242051a1d094134bdf09989ba9c868cf003.jpg',0 from public.projects where slug='siren-songs';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_55608fbd9b1b431ea8c0991e96ca6155~mv2.png',0 from public.projects where slug='motherboard';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_b79e51a8d22743ecb2f2950153826615~mv2.jpeg',0 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_ffc419fc428d4140957c65aa7aecb5ef~mv2.jpg',1 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_cda37e6825ea47948fee1d82bc9a0ff2~mv2.jpg',2 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_0de7c3085d9d45468b76c9e4413d3f74~mv2.jpg',3 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_1e4f290fd0704c00901218fa8919482b~mv2.jpg',4 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_362e145f4d7149f3bfbe4319ec538c79~mv2.jpg',5 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_765cd682ca09463ea29b90c947dd676c~mv2.jpg',6 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_c068c2000c684803ab2baff4876eb3fa~mv2.jpg',7 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_942d6041081e4a63bf967bb68c03d707~mv2.png',8 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_5df87f1abb6d428db9ac878684a6193e~mv2.jpg',9 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_6d56d6348e904dc3b406a8e455896314~mv2.gif',10 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_35de2b01872f4082a871a9a4007d7cf2~mv2.jpg',11 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_4bb1d8b9b3754d6aa5635644799410df~mv2.png',12 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_51ae4693bad04e5cbb8ab3f511dc3caa~mv2.jpg',13 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_b07614a637594dc99203ca974c5d116a~mv2.jpg',14 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_b73d3320052c46378bc9518b271605b5~mv2.jpeg',15 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_9c7a6faa99c24a2ca5b9cd3b610788ea~mv2.png',16 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_404697206be34fcfacb96714d50191ff~mv2.png',17 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_64fa00d43bd14441a79e7f3a1f40e85e~mv2.jpg',18 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a9b7e91e834348e3af83570b78104133~mv2.png',19 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_1ba28dcc2ceb4d52842669394429dc62~mv2.png',20 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_95453f47cd7c49c288408b075266f7c1~mv2.png',21 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_98fec14f39f6403cbee55d34f4170345~mv2.jpg',22 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_baa2b139c3a9459e9e26719c542b3ebd~mv2.jpg',23 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_9a2e34ae4bf14018a76c5776273dfe46~mv2.png',24 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_9f548ee030f344498e8f528f3959e415~mv2.jpg',25 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_f58170d8ec2a4b8b84b115afec4b507d~mv2.png',26 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_69f9da0d240041a8ade105cb458018a7~mv2.jpeg',27 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_91e21dfb8bae4f1da09a6d556224ea83~mv2.png',28 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_72cb0512e522443d93ee85e9bc6139a5~mv2.png',29 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_48f98d186f01472f987818daf58374ae~mv2.jpg',30 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_fea5cb43e16f40b993e2d6e3d3228220~mv2.png',31 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_9e542e299aed475997a688d30c764ee4~mv2.png',32 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_cd1de27c42ae4742b58db7d30d36a560~mv2.jpg',33 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_471d6f52f7e140919e9c7b02eae2f95c~mv2.png',34 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_aa5fc30491184fffb3827b5fa65b9701~mv2.png',35 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_089b74227daf49d8b19d71879ec9771e~mv2.png',36 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_7bb0e63889e944a38120f5cf8ab7bc94~mv2.png',37 from public.projects where slug='liberty-bell';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_70c064991dc64662b3156347064cbc03~mv2.jpg',0 from public.projects where slug='facebook-air-program';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a1a469b295ae43be808dfb7dd937fb2c~mv2.jpg',1 from public.projects where slug='facebook-air-program';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_7563253df2e54986965406bdecba26ae~mv2.jpg',2 from public.projects where slug='facebook-air-program';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_d662240ab66441fb80004acdc32f0b5b~mv2.jpeg',0 from public.projects where slug='border-wall';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e5b1a94156dd4015a868deb4d59e5de4~mv2.jpg',0 from public.projects where slug='encodingfutures';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_fcfc04a2eb844631b071bc12ff925f00~mv2.jpg',1 from public.projects where slug='encodingfutures';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e3bc88631b4c4c9684a6ce5d4ae5e8b0~mv2.jpg',2 from public.projects where slug='encodingfutures';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_55608fbd9b1b431ea8c0991e96ca6155~mv2.png',3 from public.projects where slug='encodingfutures';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_5c55dbaf53ba4bd3be4ae343431628ce~mv2.jpg',0 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_b0b0c1b3e88b467e97cca4bd1f83d2e2~mv2.jpg',1 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_7e0c1ca2475b44d8a61e016183b3facb~mv2.jpg',2 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_71c25863854349868a65233638f239fef003.jpg',3 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_ae155adec384412aaab82c9ff74ed373~mv2.jpg',4 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_36d3cc54518a4141aff65d10fbfba9f8~mv2.jpg',5 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_5a52e27557d54074848562f123a6b048~mv2.jpg',6 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_d3f1c31230ca4554a64c734ba16aeb45~mv2.jpg',7 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_ce537e27401344e38aaa4a5503b028aa~mv2.jpg',8 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_82db2f3de93e44c396d0711858df0532~mv2.jpg',9 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_796430033dad41e380113541c9a2e833~mv2.jpg',10 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_85ae492ade7e42f89e3dc3dd44f8bd15~mv2.jpg',11 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_c6b750406908420493124b07417c980a~mv2.jpg',12 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_3b688ade54484cdaa4439258fd2c010c~mv2.jpeg',13 from public.projects where slug='in-plain-sight';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_1a4d3b8cc5ee42beae4cd6a6993818e4~mv2.jpg',0 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_8adb21e670844be182da9077e2dd8b5b~mv2.jpg',1 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_f69dc0c59deb444a9aeba37869c233e8~mv2.jpg',2 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_235177f8d65b4d86935691b20a96eadf~mv2.jpg',3 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_1fba21a8fe62491ba9c8a0f67bda1609~mv2.jpg',4 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_7b15a577783249e4bcb2851452b83ac2~mv2.jpg',5 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_03e2121408f34085a9a0643031f257b1~mv2.jpg',6 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_07dbd5179f774299b04e32cb54b7132b~mv2.jpg',7 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_bd95d11bcf9043ddba9424a33ea0994f~mv2.jpg',8 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_d2168a1eb1234588a994d4edab330ac8~mv2.jpg',9 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_47d9ea68e7e64a84ac01c787cd9464f5~mv2.jpg',10 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e812f77a5e9c434d9bf3b2c157980b45~mv2.jpg',11 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_86defaaa447247daa6471d83e2cd8a7d~mv2.jpg',12 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_50e4911990814f25a43035e96eb7039f~mv2.jpg',13 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_fa76f4140938482197e315cd2b72d50c~mv2.jpg',14 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_bef6ba1e10c8483d885e82f55cb29052~mv2.jpg',15 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_85022b395eef40e7a61155f314745dee~mv2.jpg',16 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_f039731861574ce6b06dd842e226f822~mv2.jpg',17 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_77879daf59d847d6b26acf9842aad3b9~mv2.jpg',18 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a454385ff60b47e29602b50a2ebe0ed2~mv2.jpg',19 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a5e180075db14c0e92802ffece511011~mv2.jpg',20 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_c4e37b5ce84b4963ae687a0b4e89c1d1~mv2.jpg',21 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_3dee6e6834574fb3a6f59de2356e348b~mv2.jpg',22 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_bd4794efc98e4a65a86e2bdc96a58ff3~mv2.jpg',23 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_318077d3974648d89918414620135d74~mv2.jpg',24 from public.projects where slug='battlegrounds';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_ef23fca85e1c4fcdb4c7a28c3bf2e1ff~mv2.jpg',0 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_bf070b47dd674c258b201b92d5c32b08~mv2.jpg',1 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a74e50233a944e24bdca279d9229aa7a~mv2.png',2 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_b308af577b3b4636a1a9e024a81af791~mv2.jpg',3 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_1a82098b4f444c1e92ffd906c63b9180~mv2.jpg',4 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_568852d817cf4e699760fcdc5babdbf9~mv2.jpg',5 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_e997d932a4a74bee847155d5b3f26bcb~mv2.png',6 from public.projects where slug='defining-line-sites';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_3509462d73284a278a3648e4bba5eadc~mv2.jpg',0 from public.projects where slug='texas-biennial';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_a1aa94cf61de48e8b99fb19440073796f003.jpg',1 from public.projects where slug='texas-biennial';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_0efe086a70f842b9832e1f417f3bba77~mv2.png',0 from public.projects where slug='mushroom-cloud-la';
insert into public.project_media (project_id,kind,url,sort_order) select id,'image','https://static.wixstatic.com/media/96feaf_0e05626ec89b48ecba0583029117cc65f003.jpg',1 from public.projects where slug='mushroom-cloud-la';

-- ===== PAGES =====
insert into public.pages (key,title,body) values
  ('about','About','4th Wall is a free, augmented reality (AR) public art platform exploring resistance and inclusive creative expression.

Excited by augmented reality’s potential to increase access to fine art, new media artist

founded the 4th Wall app with developer

in February 2018. Her intention was to challenge traditional conventions of public art and introduce a participatory, immersive art experience.

The app has since expanded to include geolocated AR land art, curated AR exhibitions, and collaborative projects with artists around the globe. 4th Wall is committed to conceptually rigorous artworks, and intends to prompt thoughtful discourse and activate ideas using the unique affordances of augmentation.')
on conflict (key) do update set title=excluded.title, body=excluded.body;
insert into public.pages (key,title,body) values
  ('how-to-use','How To Use','Using wifi, download and open the free app

iPhones 6s and above or Androids with ARCore (iOS11 or higher)

Allow all permissions. 4th Wall does not collect any user data.

Download latest update for iPhone/iPad

Select Coordinates. The app will search for the nearest artwork based on your location. You will be directed toward artworks translated into AR, "go to..."

Clicking on any of the VR translated to AR dimensional drawings works will allow you to place the work in your current environment. Resize, move, and adjust the selected drawing by pinching and dragging it with your finger.​

Click "about" to be directed to 4thwall.org. You can re-enter the app by tapping the text, “4th Wall” at the upper left hand corner of your screen.

Select from the Menu to open a Google map for a specific AR Exhibition and view coordinates for geolocated artworks.

After selecting Coordinates, follow the arrow to view an artwork in your proximity.

The “Refresh” button updates the nearest artwork depending on your location.

Record the experience by allowing 4th Wall to access your photos. Use the camera icons on the right of the screen to document. Your recordings will save directly to your camera roll.

After selecting AR artworks, select an artwork and move or walk around to scan the ground.

Share your photos and recordings on any social media and tag

@4thwallapp #4thwallapp @nancybakercahill

Occlusion button - This is only available on some devices, and toggles environment occlusion. This allows you to set the AR artwork into the environment and behind real world features.

Note: Person occlusion is always turned on, as long as your device supports it, so you can always take pictures of people in front of the AR artwork

— Troubleshooting —

I can''t get the app to download.

Make sure you are connected to Wifi when downloading the app and that your device has enough memory.

4th Wall works on iPhones and iPads, 6s and above

(see a list of these devices here)

If your device matches these specs and you are still having trouble loading the AR experiences, you may need to update your software.

When I open the app and try to view one of the artworks, all I see is a black screen.

If you get a black screen, this means you may still need to allow 4th Wall to access your camera, location and mic.

Go to your phone settings and allow access under "4th Wall"

4th Wall does not collect any user data.

The works take a long time to load, or I can only see "loading" on the screen.

Try closing some other apps/programs, then reopen 4th Wall. Make sure all permissions have been granted.

and let us know what''s happening, and we''ll try to fix it.')
on conflict (key) do update set title=excluded.title, body=excluded.body;

-- ===== PRESS =====
delete from public.press;
insert into public.press (title,url) values ('Artist Nancy Baker Cahill Selects Algorand','https://www.prnewswire.com/news-releases/artist-nancy-baker-cahill-selects-the-algorand-blockchain-to-mint-nft-for-mushroom-cloud-nyc--rise-presented-as-part-of-the-2022-tribeca-festival-301560097.html');
insert into public.press (title,url) values ('Why is an AR mushroom cloud exploding over the Santa Monica Pier? Anything goes during Frieze Week','https://www.latimes.com/entertainment-arts/story/2022-02-11/ar-mushroom-cloud-over-the-santa-monica-pier-frieze-week');
insert into public.press (title,url) values ('From Battlegrounds to Liberty Bell – Public Art, Augmented Reality, and the Art of Nancy Baker Cahill','https://publicartdialogue.org/newsletter/fall-2021/battlegrounds-liberty-bell-%E2%80%93-public-art-augmented-reality-and-art-nancy-baker');
insert into public.press (title,url) values ('Augmented Dreams','https://www.artnews.com/art-in-america/features/augmented-reality-art-1234581120/');
insert into public.press (title,url) values ('The Defining Public Artworks of 2020: From Toppled Monuments to Messages in the Sky,','https://www.artnews.com/art-news/news/most-important-public-art-2020-1234580125/');
insert into public.press (title,url) values ('Who Will Shape the Art World in 2021?: ARTnews Presents ‘The Deciders’','https://www.artnews.com/art-news/news/shaping-art-2021-deciders-1234577339/');
insert into public.press (title,url) values ('Ghosts in the Machine','https://www.frieze.com/article/nancy-baker-cahills-ghostly-monuments?utm_source=Frieze+Publishing+%282018%29&utm_campaign=d5f468a3d3-EMAIL_CAMPAIGN_2020_05_01_01_56_COPY_02&utm_medium=email&utm_term=0_a0d64a765a-d5f468a3d3-205427938');
insert into public.press (title,url) values ('4 art road trips to take this fall across the U.S., Anna Mazurek,','https://www.washingtonpost.com/travel/tips/outdoor-art-roadtrips/');
insert into public.press (title,url) values ('Visual Arts Commentary: Digital Media — Public Art is a Bridge to Our New Normal','https://artsfuse.org/211932/visual-arts-commentary-digital-media-public-art-is-a-bridge-to-our-new-normal/');
insert into public.press (title,url) values ('Embracing the Radical Uncertainty of Part-Machines','https://lareviewofbooks.org/article/embracing-radical-uncertainty');
insert into public.press (title,url) values ('Selma one of six cities in the country chosen to display virtual art piece','https://selmasun.com/selma-one-of-six-cities-in-the-country-chosen-to-display-virtual-art-piece/');
insert into public.press (title,url) values ('Weighing the Fate of our Most Problematic Public Art','https://www.bostonglobe.com/2020/07/10/arts/weighing-best-options-disposing-or-adapting-old-monuments/');
insert into public.press (title,url) values ('What I did on my Charleston Stay-Put Vacation','https://www.postandcourier.com/columnists/what-i-did-on-my-charleston-stay-put-vacation/article_abf8c6aa-c15a-11ea-89cb-bfedfda0161e.html');
insert into public.press (title,url) values ('What''s Happening (Digitally) in the Art World','https://www.bostonglobe.com/2020/07/09/arts/whats-happening-digitally-arts-world/');
insert into public.press (title,url) values ('Mostly Virtual Arts Round Up','https://georgetowner.com/articles/2020/07/09/mostly-virtual-arts-round-up-july-9-2020/');
insert into public.press (title,url) values ('This AR Artwork Reimagines Historical Spaces Across the U.S.,','https://www.smithsonianmag.com/smart-news/ar-artwork-rethinks-historical-spaces-180975263/');
insert into public.press (title,url) values ('You can view this cool augmented reality artwork in six different cities','https://www.timeout.com/usa/news/you-can-view-this-cool-augmented-reality-artwork-in-six-different-cities-070820');
insert into public.press (title,url) values ('80 artists wrote messages in the skies above ICE detention centers,','https://www.cnn.com/style/article/artists-skytype-immigration-facilities-xmap-in-plain-sight/index.html');
insert into public.press (title,url) values ('British Arts Institutions Receive £1.5 Billion in Aid and More: Morning Links from July 6, 2020','https://www.artnews.com/art-news/news/british-art-museums-government-aid-morning-links-1202693404/');
insert into public.press (title,url) values ('‘In Plain Sight’: 80 Artists Take Over the Skies in Support of Immigrant Rights','https://www.kcet.org/shows/southland-sessions/in-plain-sight-80-artists-take-over-the-skies-in-support-of-immigrant');
insert into public.press (title,url) values ('''Liberty Bell'' Tolls for Sites Where History is Alive and Kicking','https://www.nytimes.com/2020/07/02/arts/design/liberty-bell-nancy-baker-cahill.html');
insert into public.press (title,url) values ('On Art Museum Steps, a different ''Liberty Bell,''','https://www.inquirer.com/arts/liberty-bell-philadelphia-art-museum-ar-augmented-reality-20200704.html');
insert into public.press (title,url) values ('Protesting U.S. Immigration Policies, Artists Aim for the Sky,','https://www.nytimes.com/2020/07/03/arts/design/july-4-skytyping-skywriting-immigration.html');
insert into public.press (title,url) values ('The Culture Lover’s July Guide','https://www.harpersbazaar.com/culture/art-books-music/a33012623/july-culture-calendar/');
insert into public.press (title,url) values ('Why I’m One of 80 Artists Writing Messages of Hope and Rage in the Sky This Independence Day','https://www.artsy.net/article/artsy-editorial-one-80-artists-writing-messages-hope-rage-sky-independence-day');
insert into public.press (title,url) values ('80 artists will mark Fourth of July with skytyped messages over U.S. detention centers','https://www.latimes.com/entertainment-arts/story/2020-07-03/july-4th-80-artists-sky-write-messages-over-detention-centers');
insert into public.press (title,url) values ('Art Reality Studio arms artists with VR gear and asks: What if?','https://www.latimes.com/entertainment-arts/story/2020-04-25/vr-virtual-reality-incubation-lab-for-artists-art-reality-studios');
insert into public.press (title,url) values ('Human Nature: Are We Animals Or Are We Machines?','https://www.laweekly.com/human-nature-are-we-animals-or-are-we-machines/');
insert into public.press (title,url) values ('Chanel Manicures, Bondage Ballet, and Emily Ratajkowski: Inside the Art Production Fund’s 2020 Gala','https://www.vogue.com/contributor/zachary-schwartz');
insert into public.press (title,url) values ('The Top AR Apps, Projects And Activations Of 2019','https://www.forbes.com/sites/jessedamiani/2020/02/27/the-top-ar-apps-projects-and-activations-of-2019/#5a3065736879');
insert into public.press (title,url) values ('The Top 35 XR Installations of 2019','https://www.forbes.com/sites/jessedamiani/2020/02/19/the-top-35-xr-installations-of-2019/#62ae303cca08');
insert into public.press (title,url) values ('Plans for Berggruen Institute’s ‘scholars’ campus’ in the Santa Monica Mountains move forward, First cohort of artist fellows includes Nancy Baker Cahill, Agnieszka Kurant and Pierre Huyghe','https://www.theartnewspaper.com/news/berggruen-institute-plans-move-forward');
insert into public.press (title,url) values ('Using AR to Explore Contested Sites in New Orleans with Nancy Baker Cahill’s 4th Wall App,','https://voicesofvr.com/874-vr-for-good-using-ar-to-explore-contested-sites-in-new-orleans-with-nancy-baker-cahills-4th-wall-app/');
insert into public.press (title,url) values ('Confederate Statue, plantation, prison: Artists reclaim sites with ‘Battlegrounds','https://www.latimes.com/entertainment-arts/story/2019-10-29/nancy-baker-cahill-battlegrounds-new-orleans-augmented-reality');
insert into public.press (title,url) values ('Apple Puts The AR In ''Art'' (and in ''Transparent Sky-Being''),','https://www.wired.com/story/apple-ar-art-walk/');
insert into public.press (title,url) values ('Arts Pick: FEMMEBIT Festival,','https://www.laweekly.com/arts/arts-pick-femmebit-festival-10154749');
insert into public.press (title,url) values ('With a Free Phone App, Nancy Baker Cahill Cracks the Glass Ceiling in Male-Dominated Land Art,','https://www.latimes.com/entertainment/arts/la-et-cm-nancy-baker-cahill-desert-x-20190228-story.html');
insert into public.press (title,url) values ('For Desert X 2019, I Drove 198 Miles to See 19 Artists'' Work. Here''s the Best','https://www.latimes.com/entertainment/arts/la-et-cm-desert-x-review-2019-20190223-story.html');
insert into public.press (title,url) values ('The Land Art at Desert X Confronts Borders and Politics on Indigenous Territory','https://hyperallergic.com/484232/the-land-art-at-desert-x-confronts-borders-and-politics-on-indigenous-territory/');
insert into public.press (title,url) values ('Desert X Kicks Off--See the Artworks Here','https://www.widewalls.ch/desert-x-2019/');
insert into public.press (title,url) values ('The Seven Most Awe-Inspiring Installations from Desert X,','https://www.artsy.net/article/artsy-editorial-7-awe-inspiring-installations-desert');
insert into public.press (title,url) values ('The 9 Most Unforgettable Installations at Desert X in Coachella Valley, Laura van Straaten','https://www.galeriemagazine.com/unforgettable-installations-desert-x-2019/');
insert into public.press (title,url) values ('Built on Sand: Transitory Imprints at Desert X 2019,','https://goldenstate.is/built-on-sand-transitory-imprints-at-desert-x-2019/');
insert into public.press (title,url) values ('In the Vast Beauty of the Coachella Valley, Desert X Artists Emphasize the Perils of Climate Change','https://news.artnet.com/exhibitions/desert-x-2019-2-1462891');
insert into public.press (title,url) values ('At the Desert X Kickoff, Coachella Valley Becomes an Art World Hotspot Once Again','https://www.vanityfair.com/style/2019/02/desert-x-kickoff-coachella-valley-art-world-hot-spot');
insert into public.press (title,url) values ('Hard Hitting Installations Pop Up in the Desert for the Second Edition of Desert X','https://www.juxtapoz.com/news/installation/hard-hitting-installations-pop-up-in-the-desert-for-the-second-edition-of-desert-x/');
insert into public.press (title,url) values ('Here''s How to Get All the Desert X 2019 Installations','https://www.desertsun.com/story/life/entertainment/arts/2019/02/09/desert-x-2019-heres-guide-get-all-installations/2823214002/');
insert into public.press (title,url) values ('Desert Experiment,','https://www.palmspringslife.com/desert-x-launches-2019/');
insert into public.press (title,url) values ('Desert X 2019: Five Installations to View at Salton Sea, by Shane Newell and Janet Wilson,','https://www.desertsun.com/story/life/entertainment/2019/02/07/desert-x-2019-five-art-pieces-view-salton-sea/2653741002/');
insert into public.press (title,url) values ('Desert X 2019: Artists Will Tackle Environmental Disasters, Guns, Immigration, Deborah Vankin','https://www.latimes.com/entertainment/arts/la-et-cm-desert-x-artist-lineup-20190128-story.html');
insert into public.press (title,url) values ('At DesertX, An Arid Art Exhibit Materializes, B','https://www.wsj.com/articles/at-desert-x-an-arid-art-exhibit-materializes-11548685475');
insert into public.press (title,url) values ('Thrills and Possibilities as Artist Ventures Into Digital Realms,','https://www.bostonglobe.com/arts/art/2019/01/16/thrills-and-possibilities-artist-ventures-into-digital-realms/H9LaIiJGEU4k0xrw3o1W4J/story.html');
insert into public.press (title,url) values ('Art +Technology Series: Art & Augmented Reality: Nancy Baker Cahill','https://youtu.be/i9cFUDshxMQ');
insert into public.press (title,url) values ('How Virtual Art Appearing Along the LA River Tackles Gentrification, Immigration and Environmental Issues','https://www.latimes.com/entertainment/arts/museums/la-et-cm-4th-wall-vr-art-nancy-baker-cahill-20181029-story.html');
insert into public.press (title,url) values ('Artists Create GPS Enabled Augmented Reality Art to Deliver Provocative Political Messages','https://vrvoice.co/artists-create-gps-enabled-augmented-reality-art-to-deliver-provocative-political-messages/');
insert into public.press (title,url) values ('Biggest Ever VR/AR/MR Art Show Coming to sp[a]ce gallery,','https://www.animationmagazine.net/events/biggest-ever-vr-ar-mr-art-show-coming-to-space-gallery/');
insert into public.press (title,url) values ('Artists Use AR to Display Politically-Charged Art in Provocative Places: Billed as the first truly interactive fine-art augmented reality experience, this may be the birth of a new medium,','https://www.zdnet.com/article/artists-use-ar-to-display-politically-charged-art-in-provocative-places/');
insert into public.press (title,url) values ('Artists Spread Inspirational Political Messages Through Geo-Located AR Art,','https://vrscout.com/news/artists-spread-geo-located-ar-art/');
insert into public.press (title,url) values ('A New Model for Public Art: With ‘Coordinates’ Feature, 4th Wall AppAllows Users to View Artist-Designed AR Projects Claire Selvin','http://www.artnews.com/2018/08/13/new-model-public-art-coordinates-feature-4th-wall-app-allows-users-view-artist-designed-ar-projects/');
insert into public.press (title,url) values ('Artists are Using Augmented Reality to Install Virtual Works in Powerful Places','http://www.lamag.com/culturefiles/4th-wall-ar-art/');
insert into public.press (title,url) values ('Nancy Baker Cahill Drops AR Art Bomb','https://www.theartnewspaper.com/blog/nancy-baker-cahill-drops-ar-art-bombs');
insert into public.press (title,url) values ('L’arte aumentata. Tecnologia all’opera. Il Paese delle Meraviglie incontra Snapchat','http://www.lastampa.it/2018/06/26/cultura/larte-aumentata-tecnologia-allopera-il-paese-delle-meraviglie-incontra-snapchat-EqwiBuDWPbeftYRvTookXK/premium.html#acquistaregistraaccedi');
insert into public.press (title,url) values ('The Adventures of Nancy Baker Cahill Across the 8th Dimension','https://www.laweekly.com/arts/artist-nancy-baker-cahill-makes-art-in-mixed-reality-9384388');
insert into public.press (title,url) values ('REVIEW: Artist Showcases AR Art in 4thWall App, Jordan Castinado,','http://seeflection.com/15035/4thwall-review-artist-showcases-her-ar-art-in-an-interactive-app/');
insert into public.press (title,url) values ('These Virtual Sculptures Make Any Environment an Art Installation','https://www.good.is/articles/nancy-baker-cahill-vr-ar');
insert into public.press (title,url) values ('This Artist Just Entered the Age of Augmented Reality by Releasing her Own Mobile App,','https://www.forbes.com/sites/katmustatea/2018/02/18/this-artist-just-entered-the-age-of-augmented-reality-by-releasing-her-own-mobile-app/#58e16b9510a9');
insert into public.press (title,url) values ('This App Lets You Dive Into The Richness Of An Artist''s Studio From Anywhere','https://www.fastcompany.com/40524864/this-app-lets-you-dive-into-the-richness-of-an-artists-studio-from-anywhere');
insert into public.press (title,url) values ('nancybakercahill.com','http://nancybakercahill.com');
insert into public.press (title,url) values ('Shaking Earth Digital','https://www.shakingearthdigital.com/');

-- ===== TALKS (best-effort import — review/clean as needed) =====
delete from public.talks;
insert into public.talks (title,description,sort_order) values ('Friday Art Break: Surveillance Technologies in XR Art, Activism, and Everyday Life','Facial recognition, data mining, racial profiling, biometric tracking, surveillance capitalism and its side effect—what some scholars have called “algorithmic obedience training”—are systems and tools that infringe on our liberties yet often remain invisible or difficult to detect. Artist Nancy Baker Cahill and cyber security expert Kavya Pearlman come together to discuss surveillance technologies and how they impact art, activism and everyday citizens. These friends and collaborators will discuss surveillance as a human rights issue and how vulnerable communities are disproportionately endang',0);
insert into public.talks (title,description,sort_order) values ('Drawing in VR: Nancy Baker Cahill','A project that came out of a need to put someone inside the artwork in an unconscious, wordless way. Transformations of the Human artist fellow Nancy Baker Cahill explores the transformative medium that is virtual reality. View Nancy''s Inspiration collection on Analogue: https://bit.ly/3jjXK39 View Historic Landmarks With This Augmented Reality Art App | Future Blink Users can download the free app called “4th Wall” and open it at historic sites from Selma to Boston to view artist''s Nancy Baker Cahill''s piece "Liberty Bell." Mashable is your source for the latest in tech, culture, and entertai',10);
insert into public.talks (title,description,sort_order) values ('Sónar+D Talks: Augmented Aesthetics #AR','It has been a big year for augmented reality, that could have a greater potential to reach bigger audiences than its cousin VR. Artists and creators are using the canvas of AR to create a new layer of expression on top of our world from GPS AR sculptures in space to AR-enabled fashion shows. Learn about how creators are exploring this new medium, with Jesse Damiani (VR scout), Nancy Baker Cahill (artist) and Connie Harrison (creative director and producer). #sonarD2019 #sonar+D #sonarplusD #sonarD #sonarfestival #sonarbarcelona #creativity #technology #business #interdisciplinarycongress #inte',20);
insert into public.talks (title,description,sort_order) values ('Nancy Baker Cahill Revamps Galleries with Augmented Reality – Brought to you by Hyundai','In the twenty-fifth episode of ART + TECHNOLOGY, we meet Nancy Baker Cahill, a multi-disciplinary artist who works tirelessly to broaden access to art, viewing AR as a natural extension of her drawings. Nancy’s 4th Wall app empowers users to place her artworks (in 360 degrees) anywhere in the world, and Coordinates - a recent addition to 4th Wall - enables users to connect with other artists’ works too. Nancy is interested in power dynamics and connecting with underserved communities, and it is AR that she leverages to promote new perspectives and advance dialogue through different cultural co',30);
insert into public.talks (title,description,sort_order) values ('Keynote - The Subversive Potential of XR in Fine Art and Public Access with Nancy Baker Cahill','What could idea activation look like in XR? Multidisciplinary artist Nancy Baker Cahill combines her fine art and social practice through her free, public art platform, the 4thWall app. Her projects seek to increase access to site-specific, collaborative public art in AR and to prompt dialogue and unlikely communities. In this talk, she explores the cultural value of inclusive creative expression and resistance.',40);
insert into public.talks (title,description,sort_order) values ('*Nancy Baker Cahill (Founder, 4th Wall)',null,50);
