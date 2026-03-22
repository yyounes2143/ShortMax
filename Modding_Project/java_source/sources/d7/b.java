package d7;

import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import o5.o0;
/* compiled from: CameraMotionRenderer.java */
/* loaded from: classes4.dex */
public final class b extends f {

    /* renamed from: n  reason: collision with root package name */
    private final DecoderInputBuffer f50192n;

    /* renamed from: o  reason: collision with root package name */
    private final g0 f50193o;

    /* renamed from: p  reason: collision with root package name */
    private long f50194p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private a f50195q;

    /* renamed from: r  reason: collision with root package name */
    private long f50196r;

    public b() {
        super(6);
        this.f50192n = new DecoderInputBuffer(1);
        this.f50193o = new g0();
    }

    @Nullable
    private float[] H(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f50193o.N(byteBuffer.array(), byteBuffer.limit());
        this.f50193o.P(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.f50193o.q());
        }
        return fArr;
    }

    private void I() {
        a aVar = this.f50195q;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void D(v0[] v0VarArr, long j10, long j11) {
        this.f50194p = j11;
    }

    @Override // o5.o0
    public int a(v0 v0Var) {
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(v0Var.f19157l)) {
            return o0.k(4);
        }
        return o0.k(0);
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.m1.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 8) {
            this.f50195q = (a) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p1
    public void render(long j10, long j11) {
        while (!hasReadStreamToEnd() && this.f50196r < 100000 + j10) {
            this.f50192n.b();
            if (E(s(), this.f50192n, 0) == -4 && !this.f50192n.h()) {
                DecoderInputBuffer decoderInputBuffer = this.f50192n;
                this.f50196r = decoderInputBuffer.f17475e;
                if (this.f50195q != null && !decoderInputBuffer.g()) {
                    this.f50192n.n();
                    float[] H = H((ByteBuffer) s0.j(this.f50192n.f17473c));
                    if (H != null) {
                        ((a) s0.j(this.f50195q)).a(this.f50196r - this.f50194p, H);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void x() {
        I();
    }

    @Override // com.google.android.exoplayer2.f
    protected void z(long j10, boolean z10) {
        this.f50196r = Long.MIN_VALUE;
        I();
    }
}
