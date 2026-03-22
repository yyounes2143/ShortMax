package io.bidmachine.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import io.bidmachine.media3.exoplayer.audio.DefaultAudioSink;
import io.bidmachine.media3.exoplayer.audio.d;
import zm.u;
/* compiled from: DefaultAudioOffloadSupportProvider.java */
/* loaded from: classes8.dex */
public final class i implements DefaultAudioSink.d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Context f55571a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f55572b;

    /* compiled from: DefaultAudioOffloadSupportProvider.java */
    @RequiresApi(29)
    /* loaded from: classes8.dex */
    private static final class a {
        public static d a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            boolean isOffloadedPlaybackSupported;
            isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
            if (!isOffloadedPlaybackSupported) {
                return d.f55521d;
            }
            return new d.b().e(true).g(z10).d();
        }
    }

    /* compiled from: DefaultAudioOffloadSupportProvider.java */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    private static final class b {
        public static d a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            int playbackOffloadSupport;
            boolean z11;
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            if (playbackOffloadSupport == 0) {
                return d.f55521d;
            }
            d.b bVar = new d.b();
            if (m0.f3614a > 32 && playbackOffloadSupport == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            return bVar.e(true).f(z11).g(z10).d();
        }
    }

    public i(@Nullable Context context) {
        this.f55571a = context;
    }

    private boolean b(@Nullable Context context) {
        boolean z10;
        Boolean bool = this.f55572b;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context != null) {
            String parameters = an.d.c(context).getParameters("offloadVariableRateSupported");
            if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f55572b = Boolean.valueOf(z10);
        } else {
            this.f55572b = Boolean.FALSE;
        }
        return this.f55572b.booleanValue();
    }

    @Override // io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.d
    public d a(io.bidmachine.media3.common.a aVar, zm.c cVar) {
        cn.a.e(aVar);
        cn.a.e(cVar);
        int i10 = m0.f3614a;
        if (i10 >= 29 && aVar.F != -1) {
            boolean b10 = b(this.f55571a);
            int f10 = u.f((String) cn.a.e(aVar.f55174o), aVar.f55170k);
            if (f10 != 0 && i10 >= m0.K(f10)) {
                int M = m0.M(aVar.E);
                if (M == 0) {
                    return d.f55521d;
                }
                try {
                    AudioFormat L = m0.L(aVar.F, M, f10);
                    if (i10 >= 31) {
                        return b.a(L, cVar.a().f71826a, b10);
                    }
                    return a.a(L, cVar.a().f71826a, b10);
                } catch (IllegalArgumentException unused) {
                    return d.f55521d;
                }
            }
            return d.f55521d;
        }
        return d.f55521d;
    }
}
