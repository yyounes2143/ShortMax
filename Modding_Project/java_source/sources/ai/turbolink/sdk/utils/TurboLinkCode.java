package ai.turbolink.sdk.utils;

import com.ss.texturerender.effect.GLDefaultFilter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkCode.kt */
@Metadata
/* loaded from: classes.dex */
public enum TurboLinkCode {
    SUCCESS(200, "ok"),
    ERROR_NO_CONNECTIVITY(20001, "NO_CONNECTIVITY"),
    ERROR_INVALID_REQUEST(GLDefaultFilter.OPTION_FILTER_INT_PORT_HEIGHT, "INVALID_REQUEST"),
    ERROR_GATEWAY(500, "gateway");
    
    private int code;
    @NotNull
    private String message;

    TurboLinkCode(int i10, String str) {
        this.code = i10;
        this.message = str;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.message = str;
    }
}
