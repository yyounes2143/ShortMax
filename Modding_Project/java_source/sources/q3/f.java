package q3;

import android.graphics.Bitmap;
import o2.h;
/* compiled from: SimpleBitmapReleaser.java */
/* loaded from: classes3.dex */
public class f implements h<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private static f f65048a;

    private f() {
    }

    public static f a() {
        if (f65048a == null) {
            f65048a = new f();
        }
        return f65048a;
    }

    @Override // o2.h
    /* renamed from: b */
    public void release(Bitmap bitmap) {
        bitmap.recycle();
    }
}
