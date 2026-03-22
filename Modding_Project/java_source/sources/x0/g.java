package x0;
/* compiled from: Marker.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f70381a;

    /* renamed from: b  reason: collision with root package name */
    public final float f70382b;

    /* renamed from: c  reason: collision with root package name */
    public final float f70383c;

    public g(String str, float f10, float f11) {
        this.f70381a = str;
        this.f70383c = f11;
        this.f70382b = f10;
    }

    public boolean a(String str) {
        if (this.f70381a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f70381a.endsWith("\r")) {
            String str2 = this.f70381a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
