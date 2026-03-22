package n6;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: MediaPeriodId.java */
/* loaded from: classes4.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public final Object f62787a;

    /* renamed from: b  reason: collision with root package name */
    public final int f62788b;

    /* renamed from: c  reason: collision with root package name */
    public final int f62789c;

    /* renamed from: d  reason: collision with root package name */
    public final long f62790d;

    /* renamed from: e  reason: collision with root package name */
    public final int f62791e;

    public j(Object obj) {
        this(obj, -1L);
    }

    public j a(Object obj) {
        if (this.f62787a.equals(obj)) {
            return this;
        }
        return new j(obj, this.f62788b, this.f62789c, this.f62790d, this.f62791e);
    }

    public boolean b() {
        if (this.f62788b != -1) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f62787a.equals(jVar.f62787a) && this.f62788b == jVar.f62788b && this.f62789c == jVar.f62789c && this.f62790d == jVar.f62790d && this.f62791e == jVar.f62791e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f62787a.hashCode()) * 31) + this.f62788b) * 31) + this.f62789c) * 31) + ((int) this.f62790d)) * 31) + this.f62791e;
    }

    public j(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public j(Object obj, long j10, int i10) {
        this(obj, -1, -1, j10, i10);
    }

    public j(Object obj, int i10, int i11, long j10) {
        this(obj, i10, i11, j10, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(j jVar) {
        this.f62787a = jVar.f62787a;
        this.f62788b = jVar.f62788b;
        this.f62789c = jVar.f62789c;
        this.f62790d = jVar.f62790d;
        this.f62791e = jVar.f62791e;
    }

    private j(Object obj, int i10, int i11, long j10, int i12) {
        this.f62787a = obj;
        this.f62788b = i10;
        this.f62789c = i11;
        this.f62790d = j10;
        this.f62791e = i12;
    }
}
