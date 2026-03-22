package io.bidmachine.media3.exoplayer.audio;

import android.media.AudioAttributes;
import android.media.AudioTrack;
import androidx.annotation.RequiresApi;
import cn.m0;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.audio.DefaultAudioSink;
/* compiled from: DefaultAudioTrackProvider.java */
/* loaded from: classes8.dex */
public class l implements DefaultAudioSink.f {
    private AudioTrack b(AudioSink.a aVar, zm.c cVar, int i10) {
        return new AudioTrack(e(cVar, aVar.f55409d), m0.L(aVar.f55407b, aVar.f55408c, aVar.f55406a), aVar.f55411f, 1, i10);
    }

    @RequiresApi(23)
    private AudioTrack c(AudioSink.a aVar, zm.c cVar, int i10) {
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(e(cVar, aVar.f55409d)).setAudioFormat(m0.L(aVar.f55407b, aVar.f55408c, aVar.f55406a)).setTransferMode(1).setBufferSizeInBytes(aVar.f55411f).setSessionId(i10);
        if (m0.f3614a >= 29) {
            g(sessionId, aVar.f55410e);
        }
        return d(sessionId).build();
    }

    private AudioAttributes e(zm.c cVar, boolean z10) {
        if (z10) {
            return f();
        }
        return cVar.a().f71826a;
    }

    private AudioAttributes f() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    @RequiresApi(29)
    private void g(AudioTrack.Builder builder, boolean z10) {
        builder.setOffloadedPlayback(z10);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.f
    public final AudioTrack a(AudioSink.a aVar, zm.c cVar, int i10) {
        if (m0.f3614a >= 23) {
            return c(aVar, cVar, i10);
        }
        return b(aVar, cVar, i10);
    }

    @RequiresApi(23)
    protected AudioTrack.Builder d(AudioTrack.Builder builder) {
        return builder;
    }
}
