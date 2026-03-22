package pn;

import android.media.LoudnessCodecController;
import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.HashSet;
import java.util.Iterator;
import pn.c;
/* compiled from: LoudnessCodecController.java */
@RequiresApi(35)
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<MediaCodec> f64916a;

    /* renamed from: b  reason: collision with root package name */
    private final b f64917b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private LoudnessCodecController f64918c;

    /* compiled from: LoudnessCodecController.java */
    /* loaded from: classes8.dex */
    class a implements LoudnessCodecController$OnLoudnessCodecUpdateListener {
        a() {
        }

        public Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
            return c.this.f64917b.b(bundle);
        }
    }

    public c() {
        this(b.f64920a);
    }

    public void b(MediaCodec mediaCodec) {
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.f64918c;
        if (loudnessCodecController != null) {
            addMediaCodec = loudnessCodecController.addMediaCodec(mediaCodec);
            if (!addMediaCodec) {
                return;
            }
        }
        cn.a.g(this.f64916a.add(mediaCodec));
    }

    public void c() {
        this.f64916a.clear();
        LoudnessCodecController loudnessCodecController = this.f64918c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public void d(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (this.f64916a.remove(mediaCodec) && (loudnessCodecController = this.f64918c) != null) {
            loudnessCodecController.removeMediaCodec(mediaCodec);
        }
    }

    public void e(int i10) {
        LoudnessCodecController create;
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.f64918c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f64918c = null;
        }
        create = LoudnessCodecController.create(i10, com.google.common.util.concurrent.f.a(), new a());
        this.f64918c = create;
        Iterator<MediaCodec> it = this.f64916a.iterator();
        while (it.hasNext()) {
            addMediaCodec = create.addMediaCodec(it.next());
            if (!addMediaCodec) {
                it.remove();
            }
        }
    }

    public c(b bVar) {
        this.f64916a = new HashSet<>();
        this.f64917b = bVar;
    }

    /* compiled from: LoudnessCodecController.java */
    /* loaded from: classes8.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f64920a = new b() { // from class: pn.d
            @Override // pn.c.b
            public final Bundle b(Bundle bundle) {
                Bundle a10;
                a10 = c.b.a(bundle);
                return a10;
            }
        };

        Bundle b(Bundle bundle);

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ Bundle a(Bundle bundle) {
            return bundle;
        }
    }
}
