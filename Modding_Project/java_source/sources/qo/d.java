package qo;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import zm.t;
/* compiled from: SmtaMetadataEntry.java */
/* loaded from: classes8.dex */
public final class d implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final float f65396a;

    /* renamed from: b  reason: collision with root package name */
    public final int f65397b;

    public d(float f10, int i10) {
        this.f65396a = f10;
        this.f65397b = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f65396a == dVar.f65396a && this.f65397b == dVar.f65397b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + com.google.common.primitives.c.a(this.f65396a)) * 31) + this.f65397b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f65396a + ", svcTemporalLayerCount=" + this.f65397b;
    }
}
