package an;

import an.a;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import java.util.Objects;
/* compiled from: AudioFocusRequestCompat.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f694a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager.OnAudioFocusChangeListener f695b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f696c;

    /* renamed from: d  reason: collision with root package name */
    private final zm.c f697d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f698e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Object f699f;

    /* compiled from: AudioFocusRequestCompat.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f700a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private AudioManager.OnAudioFocusChangeListener f701b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Handler f702c;

        /* renamed from: d  reason: collision with root package name */
        private zm.c f703d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f704e;

        public a a() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f701b;
            if (onAudioFocusChangeListener != null) {
                return new a(this.f700a, onAudioFocusChangeListener, (Handler) cn.a.e(this.f702c), this.f703d, this.f704e);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        public b b(zm.c cVar) {
            cn.a.e(cVar);
            this.f703d = cVar;
            return this;
        }

        public b c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            cn.a.e(onAudioFocusChangeListener);
            cn.a.e(handler);
            this.f701b = onAudioFocusChangeListener;
            this.f702c = handler;
            return this;
        }

        public b d(boolean z10) {
            this.f704e = z10;
            return this;
        }

        public b(int i10) {
            this.f703d = zm.c.f71814g;
            this.f700a = i10;
        }

        private b(a aVar) {
            this.f700a = aVar.e();
            this.f701b = aVar.f();
            this.f702c = aVar.d();
            this.f703d = aVar.b();
            this.f704e = aVar.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioFocusRequestCompat.java */
    /* loaded from: classes8.dex */
    public static class c implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f705a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioManager.OnAudioFocusChangeListener f706b;

        c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.f706b = onAudioFocusChangeListener;
            this.f705a = m0.z(handler.getLooper(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i10) {
            this.f706b.onAudioFocusChange(i10);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i10) {
            m0.c1(this.f705a, new Runnable() { // from class: an.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.c.this.b(i10);
                }
            });
        }
    }

    a(int i10, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, zm.c cVar, boolean z10) {
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener2;
        AudioFocusRequest build;
        this.f694a = i10;
        this.f696c = handler;
        this.f697d = cVar;
        this.f698e = z10;
        int i11 = m0.f3614a;
        if (i11 < 26) {
            this.f695b = new c(onAudioFocusChangeListener, handler);
        } else {
            this.f695b = onAudioFocusChangeListener;
        }
        if (i11 >= 26) {
            audioAttributes = o5.a.a(i10).setAudioAttributes(cVar.a().f71826a);
            willPauseWhenDucked = audioAttributes.setWillPauseWhenDucked(z10);
            onAudioFocusChangeListener2 = willPauseWhenDucked.setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler);
            build = onAudioFocusChangeListener2.build();
            this.f699f = build;
            return;
        }
        this.f699f = null;
    }

    public b a() {
        return new b();
    }

    public zm.c b() {
        return this.f697d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public AudioFocusRequest c() {
        return androidx.media.b.a(cn.a.e(this.f699f));
    }

    public Handler d() {
        return this.f696c;
    }

    public int e() {
        return this.f694a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f694a == aVar.f694a && this.f698e == aVar.f698e && Objects.equals(this.f695b, aVar.f695b) && Objects.equals(this.f696c, aVar.f696c) && Objects.equals(this.f697d, aVar.f697d)) {
            return true;
        }
        return false;
    }

    public AudioManager.OnAudioFocusChangeListener f() {
        return this.f695b;
    }

    public boolean g() {
        return this.f698e;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f694a), this.f695b, this.f696c, this.f697d, Boolean.valueOf(this.f698e));
    }
}
