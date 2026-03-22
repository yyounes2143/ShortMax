package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public class CLKey extends CLContainer {
    private static ArrayList<String> sSections;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        sSections = arrayList;
        arrayList.add("ConstraintSets");
        sSections.add("Variables");
        sSections.add("Generate");
        sSections.add(TypedValues.TransitionType.NAME);
        sSections.add("KeyFrames");
        sSections.add(TypedValues.AttributesType.NAME);
        sSections.add("KeyPositions");
        sSections.add("KeyCycles");
    }

    public CLKey(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CLKey) && !Objects.equals(getName(), ((CLKey) obj).getName())) {
            return false;
        }
        return super.equals(obj);
    }

    public String getName() {
        return content();
    }

    public CLElement getValue() {
        if (this.mElements.size() > 0) {
            return this.mElements.get(0);
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        return super.hashCode();
    }

    public void set(CLElement cLElement) {
        if (this.mElements.size() > 0) {
            this.mElements.set(0, cLElement);
        } else {
            this.mElements.add(cLElement);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder(getDebugName());
        addIndent(sb2, i10);
        String content = content();
        if (this.mElements.size() > 0) {
            sb2.append(content);
            sb2.append(": ");
            if (sSections.contains(content)) {
                i11 = 3;
            }
            if (i11 > 0) {
                sb2.append(this.mElements.get(0).toFormattedJSON(i10, i11 - 1));
            } else {
                String json = this.mElements.get(0).toJSON();
                if (json.length() + i10 < CLElement.sMaxLine) {
                    sb2.append(json);
                } else {
                    sb2.append(this.mElements.get(0).toFormattedJSON(i10, i11 - 1));
                }
            }
            return sb2.toString();
        }
        return content + ": <> ";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (this.mElements.size() > 0) {
            return getDebugName() + content() + ": " + this.mElements.get(0).toJSON();
        }
        return getDebugName() + content() + ": <> ";
    }

    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }
}
