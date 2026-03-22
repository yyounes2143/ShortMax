package com.inmobi.media;

import android.media.MediaPlayer;
import kotlin.Unit;
/* loaded from: classes5.dex */
public final class G8 extends MediaPlayer {

    /* renamed from: d  reason: collision with root package name */
    public static final Object f23679d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static G8 f23680e;

    /* renamed from: f  reason: collision with root package name */
    public static int f23681f;

    /* renamed from: a  reason: collision with root package name */
    public int f23682a;

    /* renamed from: b  reason: collision with root package name */
    public int f23683b;

    /* renamed from: c  reason: collision with root package name */
    public G8 f23684c;

    public final void a() {
        if (3 == this.f23682a) {
            return;
        }
        synchronized (f23679d) {
            try {
                int i10 = f23681f;
                if (i10 < 5) {
                    this.f23684c = f23680e;
                    f23680e = this;
                    f23681f = i10 + 1;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
