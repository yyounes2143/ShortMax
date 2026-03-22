package com.unity3d.ads.core.domain;

import android.opengl.GLES20;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.gl.EglCore;
import com.unity3d.ads.gl.OffscreenSurface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetOpenGLRendererInfo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidGetOpenGLRendererInfo implements GetOpenGLRendererInfo {
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidGetOpenGLRendererInfo(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetOpenGLRendererInfo
    @NotNull
    public ByteString invoke() {
        if (this.sessionRepository.getFeatureFlags().getOpenglGpuEnabled()) {
            EglCore eglCore = new EglCore(null, 2);
            OffscreenSurface offscreenSurface = new OffscreenSurface(eglCore, 1, 1);
            offscreenSurface.makeCurrent();
            String renderer = GLES20.glGetString(7937);
            Intrinsics.checkNotNullExpressionValue(renderer, "renderer");
            byte[] bytes = renderer.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            ByteString copyFrom = ByteString.copyFrom(bytes);
            offscreenSurface.release();
            eglCore.release();
            Intrinsics.checkNotNullExpressionValue(copyFrom, "{\n            // We need…dererByteString\n        }");
            return copyFrom;
        }
        ByteString empty = ByteString.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "{\n            ByteString.empty()\n        }");
        return empty;
    }
}
