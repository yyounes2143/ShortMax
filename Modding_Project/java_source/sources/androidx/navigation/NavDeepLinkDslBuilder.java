package androidx.navigation;

import androidx.navigation.NavDeepLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NavDeepLinkDslBuilder.kt */
@NavDeepLinkDsl
@Metadata
/* loaded from: classes2.dex */
public final class NavDeepLinkDslBuilder {
    @Nullable
    private String action;
    private final NavDeepLink.Builder builder = new NavDeepLink.Builder();
    @Nullable
    private String mimeType;
    @Nullable
    private String uriPattern;

    @NotNull
    public final NavDeepLink build$navigation_common_ktx_release() {
        boolean z10;
        NavDeepLink.Builder builder = this.builder;
        String str = this.uriPattern;
        if (str == null && this.action == null && this.mimeType == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            if (str != null) {
                builder.setUriPattern(str);
            }
            String str2 = this.action;
            if (str2 != null) {
                builder.setAction(str2);
            }
            String str3 = this.mimeType;
            if (str3 != null) {
                builder.setMimeType(str3);
            }
            NavDeepLink build = builder.build();
            Intrinsics.checkExpressionValueIsNotNull(build, "builder.apply {\n        …eType(it) }\n    }.build()");
            return build;
        }
        throw new IllegalStateException("The NavDeepLink must have an uri, action, and/or mimeType.");
    }

    @Nullable
    public final String getAction() {
        return this.action;
    }

    @Nullable
    public final String getMimeType() {
        return this.mimeType;
    }

    @Nullable
    public final String getUriPattern() {
        return this.uriPattern;
    }

    public final void setAction(@Nullable String str) {
        if (str != null && str.length() == 0) {
            throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.");
        }
        this.action = str;
    }

    public final void setMimeType(@Nullable String str) {
        this.mimeType = str;
    }

    public final void setUriPattern(@Nullable String str) {
        this.uriPattern = str;
    }
}
