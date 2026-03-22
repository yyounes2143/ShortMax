package d1;
/* compiled from: MeanCalculator.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private float f49788a;

    /* renamed from: b  reason: collision with root package name */
    private int f49789b;

    public void a(float f10) {
        float f11 = this.f49788a + f10;
        this.f49788a = f11;
        int i10 = this.f49789b + 1;
        this.f49789b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f49788a = f11 / 2.0f;
            this.f49789b = i10 / 2;
        }
    }
}
