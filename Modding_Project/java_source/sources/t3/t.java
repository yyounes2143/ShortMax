package t3;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.producers.v0;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r3.m;
import r3.w;
/* compiled from: ImagePipelineConfigInterface.kt */
@Metadata
/* loaded from: classes3.dex */
public interface t {
    @NotNull
    k2.k<c> A();

    @NotNull
    r3.a B();

    @NotNull
    r3.j C();

    boolean D();

    @NotNull
    Set<com.facebook.imagepipeline.producers.o> E();

    @NotNull
    DownsampleMode F();

    @Nullable
    com.facebook.callercontext.a G();

    @NotNull
    o H();

    @NotNull
    Set<a4.d> a();

    @Nullable
    r3.w<f2.a, PooledByteBuffer> b();

    @NotNull
    w3.d c();

    @Nullable
    Map<String, g2.b> d();

    @Nullable
    m.b<f2.a> e();

    boolean f();

    @Nullable
    w3.b g();

    @NotNull
    Context getContext();

    @NotNull
    k2.k<r3.x> h();

    @NotNull
    b4.d0 i();

    @NotNull
    v3.a j();

    @NotNull
    r3.s k();

    @NotNull
    k2.k<Boolean> l();

    @NotNull
    n2.c m();

    @NotNull
    u n();

    @NotNull
    v0<?> o();

    @NotNull
    g2.b p();

    @NotNull
    Set<a4.e> q();

    @NotNull
    w.a r();

    @NotNull
    w.a s();

    @NotNull
    g2.b t();

    @Nullable
    i2.g u();

    @Nullable
    Integer v();

    @Nullable
    g4.d w();

    @Nullable
    w3.c x();

    @NotNull
    k2.k<r3.x> y();

    int z();
}
