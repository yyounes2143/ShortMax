package androidx.constraintlayout.core.parser;

import androidx.annotation.NonNull;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public class CLElement implements Cloneable {
    protected static int sBaseIndent = 2;
    protected static int sMaxLine = 80;
    protected CLContainer mContainer;
    private final char[] mContent;
    private int mLine;
    protected long mStart = -1;
    protected long mEnd = Long.MAX_VALUE;

    public CLElement(char[] cArr) {
        this.mContent = cArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addIndent(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(' ');
        }
    }

    public String content() {
        String str = new String(this.mContent);
        if (str.length() < 1) {
            return "";
        }
        long j10 = this.mEnd;
        if (j10 != Long.MAX_VALUE) {
            long j11 = this.mStart;
            if (j10 >= j11) {
                return str.substring((int) j11, ((int) j10) + 1);
            }
        }
        long j12 = this.mStart;
        return str.substring((int) j12, ((int) j12) + 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLElement)) {
            return false;
        }
        CLElement cLElement = (CLElement) obj;
        if (this.mStart != cLElement.mStart || this.mEnd != cLElement.mEnd || this.mLine != cLElement.mLine || !Arrays.equals(this.mContent, cLElement.mContent)) {
            return false;
        }
        return Objects.equals(this.mContainer, cLElement.mContainer);
    }

    public CLElement getContainer() {
        return this.mContainer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getDebugName() {
        if (CLParser.sDebug) {
            return getStrClass() + " -> ";
        }
        return "";
    }

    public long getEnd() {
        return this.mEnd;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.mLine;
    }

    public long getStart() {
        return this.mStart;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getStrClass() {
        String cls = getClass().toString();
        return cls.substring(cls.lastIndexOf(46) + 1);
    }

    public boolean hasContent() {
        char[] cArr = this.mContent;
        if (cArr != null && cArr.length >= 1) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        long j10 = this.mStart;
        long j11 = this.mEnd;
        int hashCode = ((((Arrays.hashCode(this.mContent) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            i10 = cLContainer.hashCode();
        } else {
            i10 = 0;
        }
        return ((hashCode + i10) * 31) + this.mLine;
    }

    public boolean isDone() {
        if (this.mEnd != Long.MAX_VALUE) {
            return true;
        }
        return false;
    }

    public boolean isStarted() {
        if (this.mStart > -1) {
            return true;
        }
        return false;
    }

    public boolean notStarted() {
        if (this.mStart == -1) {
            return true;
        }
        return false;
    }

    public void setContainer(CLContainer cLContainer) {
        this.mContainer = cLContainer;
    }

    public void setEnd(long j10) {
        if (this.mEnd != Long.MAX_VALUE) {
            return;
        }
        this.mEnd = j10;
        if (CLParser.sDebug) {
            PrintStream printStream = System.out;
            printStream.println("closing " + hashCode() + " -> " + this);
        }
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int i10) {
        this.mLine = i10;
    }

    public void setStart(long j10) {
        this.mStart = j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toFormattedJSON(int i10, int i11) {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toJSON() {
        return "";
    }

    public String toString() {
        long j10 = this.mStart;
        long j11 = this.mEnd;
        if (j10 <= j11 && j11 != Long.MAX_VALUE) {
            String substring = new String(this.mContent).substring((int) this.mStart, ((int) this.mEnd) + 1);
            return getStrClass() + " (" + this.mStart + " : " + this.mEnd + ") <<" + substring + ">>";
        }
        return getClass() + " (INVALID, " + this.mStart + "-" + this.mEnd + ")";
    }

    @Override // 
    @NonNull
    /* renamed from: clone */
    public CLElement mo4300clone() {
        try {
            return (CLElement) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
