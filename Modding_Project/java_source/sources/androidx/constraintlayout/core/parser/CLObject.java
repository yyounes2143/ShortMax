package androidx.constraintlayout.core.parser;

import androidx.annotation.NonNull;
import java.util.Iterator;
/* loaded from: classes.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    /* loaded from: classes.dex */
    private static class CLObjectIterator implements Iterator<CLKey> {
        int mIndex = 0;
        CLObject mObject;

        CLObjectIterator(CLObject cLObject) {
            this.mObject = cLObject;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.mIndex < this.mObject.size()) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public CLKey next() {
            CLKey cLKey = (CLKey) this.mObject.mElements.get(this.mIndex);
            this.mIndex++;
            return cLKey;
        }
    }

    public CLObject(char[] cArr) {
        super(cArr);
    }

    public static CLObject allocate(char[] cArr) {
        return new CLObject(cArr);
    }

    @Override // java.lang.Iterable
    public Iterator<CLKey> iterator() {
        return new CLObjectIterator(this);
    }

    public String toFormattedJSON() {
        return toFormattedJSON(0, 0);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb2 = new StringBuilder(getDebugName() + "{ ");
        Iterator<CLElement> it = this.mElements.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            CLElement next = it.next();
            if (!z10) {
                sb2.append(", ");
            } else {
                z10 = false;
            }
            sb2.append(next.toJSON());
        }
        sb2.append(" }");
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder(getDebugName());
        sb2.append("{\n");
        Iterator<CLElement> it = this.mElements.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            CLElement next = it.next();
            if (z10) {
                z10 = false;
            } else {
                sb2.append(",\n");
            }
            sb2.append(next.toFormattedJSON(CLElement.sBaseIndent + i10, i11 - 1));
        }
        sb2.append("\n");
        addIndent(sb2, i10);
        sb2.append("}");
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    @NonNull
    /* renamed from: clone */
    public CLObject mo4300clone() {
        return (CLObject) super.mo4300clone();
    }
}
