package an;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import cn.k;
import cn.m0;
import cn.r;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
/* compiled from: AudioManagerCompat.java */
/* loaded from: classes8.dex */
public final class d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static AudioManager f711a;

    /* renamed from: b  reason: collision with root package name */
    private static Context f712b;

    public static int b(AudioManager audioManager, a aVar) {
        int abandonAudioFocusRequest;
        if (m0.f3614a >= 26) {
            abandonAudioFocusRequest = audioManager.abandonAudioFocusRequest(aVar.c());
            return abandonAudioFocusRequest;
        }
        return audioManager.abandonAudioFocus(aVar.f());
    }

    public static synchronized AudioManager c(Context context) {
        synchronized (d.class) {
            try {
                final Context applicationContext = context.getApplicationContext();
                if (f712b != applicationContext) {
                    f711a = null;
                }
                AudioManager audioManager = f711a;
                if (audioManager != null) {
                    return audioManager;
                }
                Looper myLooper = Looper.myLooper();
                if (myLooper != null && myLooper != Looper.getMainLooper()) {
                    final k kVar = new k();
                    cn.b.a().execute(new Runnable() { // from class: an.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.h(applicationContext, kVar);
                        }
                    });
                    kVar.b();
                    return (AudioManager) cn.a.e(f711a);
                }
                AudioManager audioManager2 = (AudioManager) applicationContext.getSystemService("audio");
                f711a = audioManager2;
                return (AudioManager) cn.a.e(audioManager2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public static int d(AudioManager audioManager, int i10) {
        return audioManager.getStreamMaxVolume(i10);
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public static int e(AudioManager audioManager, int i10) {
        int streamMinVolume;
        if (m0.f3614a >= 28) {
            streamMinVolume = audioManager.getStreamMinVolume(i10);
            return streamMinVolume;
        }
        return 0;
    }

    public static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            r.i("AudioManagerCompat", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    public static boolean g(AudioManager audioManager, int i10) {
        if (m0.f3614a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        if (f(audioManager, i10) == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Context context, k kVar) {
        f711a = (AudioManager) context.getSystemService("audio");
        kVar.e();
    }

    public static int i(AudioManager audioManager, a aVar) {
        int requestAudioFocus;
        if (m0.f3614a >= 26) {
            requestAudioFocus = audioManager.requestAudioFocus(aVar.c());
            return requestAudioFocus;
        }
        return audioManager.requestAudioFocus(aVar.f(), aVar.b().b(), aVar.e());
    }
}
