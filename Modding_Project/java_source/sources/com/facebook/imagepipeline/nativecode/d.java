package com.facebook.imagepipeline.nativecode;
/* compiled from: NativeJpegTranscoderSoLoader.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f15698a;

    public static synchronized void a() {
        synchronized (d.class) {
            if (!f15698a) {
                w4.a.d("native-imagetranscoder");
                f15698a = true;
            }
        }
    }
}
