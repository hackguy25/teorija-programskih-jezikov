# Premislek o dokazu leme o šibitvi

Pri dokazu leme o šibitvi se zatakne na točki, ko je treba pokazati, da drži za spremenljivke.
Lema je postavljena tako, da je `x` lahko karkoli, tudi identifikator, ki že nastopa v `Γ`.
To ni kompatibilno z definicijo vpogleda, ki dovoli širjenje konteksta le z novimi identifikatorji (pogoj `x ≠ y`).
Za dokaz leme torej moramo spremeniti ali definicijo leme, tako da zahtevamo `x ∉ Γ`, ali pa v vpogledu dovolimo, da obstajajo "zasenčene" vrednosti `x` v `Γ`.