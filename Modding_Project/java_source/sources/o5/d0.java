package o5;

import com.google.android.exoplayer2.p1;
/* compiled from: LoadControl.java */
/* loaded from: classes4.dex */
public interface d0 {
    boolean a(long j10, long j11, float f10);

    boolean b(long j10, float f10, boolean z10, long j11);

    void c(p1[] p1VarArr, n6.w wVar, z6.y[] yVarArr);

    a7.b getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();
}
