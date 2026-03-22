package lf;

import com.ss.ttvideoengine.Resolution;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OnPlayListener2.kt */
@Metadata
/* loaded from: classes6.dex */
public interface a {
    void a(@NotNull String str, @Nullable String str2, @Nullable Resolution resolution);

    void b();

    void c(int i10, int i11);

    void d(int i10);

    void e(long j10);

    void f();

    void g(int i10, int i11);

    void onBufferEnd(int i10);

    void onBufferStart(int i10, int i11, int i12);

    void onPrepared();

    void onVideoStreamBitrateChanged(@NotNull Resolution resolution, int i10);
}
