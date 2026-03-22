package androidx.constraintlayout.core.widgets;
/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x  reason: collision with root package name */
    public int f1294x;

    /* renamed from: y  reason: collision with root package name */
    public int f1295y;

    public boolean contains(int i10, int i11) {
        int i12;
        int i13 = this.f1294x;
        if (i10 >= i13 && i10 < i13 + this.width && i11 >= (i12 = this.f1295y) && i11 < i12 + this.height) {
            return true;
        }
        return false;
    }

    public int getCenterX() {
        return (this.f1294x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f1295y + this.height) / 2;
    }

    void grow(int i10, int i11) {
        this.f1294x -= i10;
        this.f1295y -= i11;
        this.width += i10 * 2;
        this.height += i11 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int i10;
        int i11;
        int i12 = this.f1294x;
        int i13 = rectangle.f1294x;
        if (i12 >= i13 && i12 < i13 + rectangle.width && (i10 = this.f1295y) >= (i11 = rectangle.f1295y) && i10 < i11 + rectangle.height) {
            return true;
        }
        return false;
    }

    public void setBounds(int i10, int i11, int i12, int i13) {
        this.f1294x = i10;
        this.f1295y = i11;
        this.width = i12;
        this.height = i13;
    }
}
