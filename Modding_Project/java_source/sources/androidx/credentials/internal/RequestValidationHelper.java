package androidx.credentials.internal;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: RequestValidationHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class RequestValidationHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: RequestValidationHelper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final boolean isValidJSON(@NotNull String jsonString) {
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            if (jsonString.length() == 0) {
                return false;
            }
            try {
                new JSONObject(jsonString);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final boolean isValidJSON(@NotNull String str) {
        return Companion.isValidJSON(str);
    }
}
