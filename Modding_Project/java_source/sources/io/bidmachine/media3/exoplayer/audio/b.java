package io.bidmachine.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import java.util.Objects;
/* compiled from: AudioCapabilitiesReceiver.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f55505a;

    /* renamed from: b  reason: collision with root package name */
    private final f f55506b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f55507c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final c f55508d;

    /* renamed from: e  reason: collision with root package name */
    private final BroadcastReceiver f55509e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final d f55510f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.audio.a f55511g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.audio.c f55512h;

    /* renamed from: i  reason: collision with root package name */
    private zm.c f55513i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55514j;

    /* compiled from: AudioCapabilitiesReceiver.java */
    @RequiresApi(23)
    /* renamed from: io.bidmachine.media3.exoplayer.audio.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0799b {
        public static void a(Context context, AudioDeviceCallback audioDeviceCallback, Handler handler) {
            an.d.c(context).registerAudioDeviceCallback(audioDeviceCallback, handler);
        }

        public static void b(Context context, AudioDeviceCallback audioDeviceCallback) {
            an.d.c(context).unregisterAudioDeviceCallback(audioDeviceCallback);
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    private final class c extends AudioDeviceCallback {
        private c() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            b bVar = b.this;
            bVar.f(io.bidmachine.media3.exoplayer.audio.a.f(bVar.f55505a, b.this.f55513i, b.this.f55512h));
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            if (m0.s(audioDeviceInfoArr, b.this.f55512h)) {
                b.this.f55512h = null;
            }
            b bVar = b.this;
            bVar.f(io.bidmachine.media3.exoplayer.audio.a.f(bVar.f55505a, b.this.f55513i, b.this.f55512h));
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes8.dex */
    private final class d extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f55516a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f55517b;

        public d(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f55516a = contentResolver;
            this.f55517b = uri;
        }

        public void a() {
            this.f55516a.registerContentObserver(this.f55517b, false, this);
        }

        public void b() {
            this.f55516a.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            b bVar = b.this;
            bVar.f(io.bidmachine.media3.exoplayer.audio.a.f(bVar.f55505a, b.this.f55513i, b.this.f55512h));
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes8.dex */
    private final class e extends BroadcastReceiver {
        private e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                b bVar = b.this;
                bVar.f(io.bidmachine.media3.exoplayer.audio.a.e(context, intent, bVar.f55513i, b.this.f55512h));
            }
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes8.dex */
    public interface f {
        void a(io.bidmachine.media3.exoplayer.audio.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, f fVar, zm.c cVar, @Nullable io.bidmachine.media3.exoplayer.audio.c cVar2) {
        c cVar3;
        Context applicationContext = context.getApplicationContext();
        this.f55505a = applicationContext;
        this.f55506b = (f) cn.a.e(fVar);
        this.f55513i = cVar;
        this.f55512h = cVar2;
        Handler C = m0.C();
        this.f55507c = C;
        if (m0.f3614a >= 23) {
            cVar3 = new c();
        } else {
            cVar3 = null;
        }
        this.f55508d = cVar3;
        this.f55509e = new e();
        Uri i10 = io.bidmachine.media3.exoplayer.audio.a.i();
        this.f55510f = i10 != null ? new d(C, applicationContext.getContentResolver(), i10) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(io.bidmachine.media3.exoplayer.audio.a aVar) {
        if (this.f55514j && !aVar.equals(this.f55511g)) {
            this.f55511g = aVar;
            this.f55506b.a(aVar);
        }
    }

    public io.bidmachine.media3.exoplayer.audio.a g() {
        c cVar;
        if (this.f55514j) {
            return (io.bidmachine.media3.exoplayer.audio.a) cn.a.e(this.f55511g);
        }
        this.f55514j = true;
        d dVar = this.f55510f;
        if (dVar != null) {
            dVar.a();
        }
        if (m0.f3614a >= 23 && (cVar = this.f55508d) != null) {
            C0799b.a(this.f55505a, cVar, this.f55507c);
        }
        io.bidmachine.media3.exoplayer.audio.a e10 = io.bidmachine.media3.exoplayer.audio.a.e(this.f55505a, this.f55505a.registerReceiver(this.f55509e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.f55507c), this.f55513i, this.f55512h);
        this.f55511g = e10;
        return e10;
    }

    public void h(zm.c cVar) {
        this.f55513i = cVar;
        f(io.bidmachine.media3.exoplayer.audio.a.f(this.f55505a, cVar, this.f55512h));
    }

    @RequiresApi(23)
    public void i(@Nullable AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfo audioDeviceInfo2;
        io.bidmachine.media3.exoplayer.audio.c cVar = this.f55512h;
        io.bidmachine.media3.exoplayer.audio.c cVar2 = null;
        if (cVar == null) {
            audioDeviceInfo2 = null;
        } else {
            audioDeviceInfo2 = cVar.f55520a;
        }
        if (Objects.equals(audioDeviceInfo, audioDeviceInfo2)) {
            return;
        }
        if (audioDeviceInfo != null) {
            cVar2 = new io.bidmachine.media3.exoplayer.audio.c(audioDeviceInfo);
        }
        this.f55512h = cVar2;
        f(io.bidmachine.media3.exoplayer.audio.a.f(this.f55505a, this.f55513i, cVar2));
    }

    public void j() {
        c cVar;
        if (!this.f55514j) {
            return;
        }
        this.f55511g = null;
        if (m0.f3614a >= 23 && (cVar = this.f55508d) != null) {
            C0799b.b(this.f55505a, cVar);
        }
        this.f55505a.unregisterReceiver(this.f55509e);
        d dVar = this.f55510f;
        if (dVar != null) {
            dVar.b();
        }
        this.f55514j = false;
    }
}
