package io.bidmachine;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RendererConfiguration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RendererConfiguration {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String GOOGLE_WATERMARK = "google_watermark";
    @NotNull
    private final Map<String, Object> extras;

    /* compiled from: RendererConfiguration.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RendererConfiguration(@NotNull Map<String, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.extras = extras;
    }

    @NotNull
    public final Map<String, Object> getExtras() {
        return this.extras;
    }

    @Nullable
    public final String getWatermark() {
        Object obj = this.extras.get("google_watermark");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Nullable
    public final Drawable getWatermarkDrawable(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return sq.o.f66587a.a(context, getWatermark());
    }
}
