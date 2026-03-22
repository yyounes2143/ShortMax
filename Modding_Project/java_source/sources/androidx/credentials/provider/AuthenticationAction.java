package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AuthenticationAction.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAuthenticationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationAction.kt\nandroidx/credentials/provider/AuthenticationAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"})
/* loaded from: classes.dex */
public final class AuthenticationAction {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String SLICE_HINT_PENDING_INTENT = "androidx.credentials.provider.authenticationAction.SLICE_HINT_PENDING_INTENT";
    @NotNull
    private static final String SLICE_HINT_TITLE = "androidx.credentials.provider.authenticationAction.SLICE_HINT_TITLE";
    private static final int SLICE_SPEC_REVISION = 0;
    @NotNull
    private static final String SLICE_SPEC_TYPE = "AuthenticationAction";
    @NotNull
    private static final String TAG = "AuthenticationAction";
    @NotNull
    private final PendingIntent pendingIntent;
    @NotNull
    private final CharSequence title;

    /* compiled from: AuthenticationAction.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private final PendingIntent pendingIntent;
        @NotNull
        private final CharSequence title;

        public Builder(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.title = title;
            this.pendingIntent = pendingIntent;
        }

        @NotNull
        public final AuthenticationAction build() {
            return new AuthenticationAction(this.title, this.pendingIntent);
        }
    }

    /* compiled from: AuthenticationAction.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAuthenticationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationAction.kt\nandroidx/credentials/provider/AuthenticationAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1855#2,2:162\n*S KotlinDebug\n*F\n+ 1 AuthenticationAction.kt\nandroidx/credentials/provider/AuthenticationAction$Companion\n*L\n145#1:162,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"WrongConstant"})
        @Nullable
        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final AuthenticationAction fromSlice(@NotNull Slice slice) {
            List<Object> items;
            boolean hasHint;
            boolean hasHint2;
            Intrinsics.checkNotNullParameter(slice, "slice");
            items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            for (Object obj : items) {
                SliceItem a10 = f.a(obj);
                hasHint = a10.hasHint(AuthenticationAction.SLICE_HINT_PENDING_INTENT);
                if (hasHint) {
                    pendingIntent = a10.getAction();
                } else {
                    hasHint2 = a10.hasHint(AuthenticationAction.SLICE_HINT_TITLE);
                    if (hasHint2) {
                        charSequence = a10.getText();
                    }
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(pendingIntent);
                return new AuthenticationAction(charSequence, pendingIntent);
            } catch (Exception e10) {
                Log.i("AuthenticationAction", "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Slice toSlice(@NotNull AuthenticationAction authenticationAction) {
            Slice.Builder addHints;
            Slice build;
            Slice.Builder addAction;
            Slice build2;
            Intrinsics.checkNotNullParameter(authenticationAction, "authenticationAction");
            CharSequence title = authenticationAction.getTitle();
            PendingIntent pendingIntent = authenticationAction.getPendingIntent();
            d.a();
            Uri uri = Uri.EMPTY;
            e.a();
            Slice.Builder a10 = b.a(uri, n.a("AuthenticationAction", 0));
            addHints = c.a(a10).addHints(Collections.singletonList(AuthenticationAction.SLICE_HINT_PENDING_INTENT));
            build = addHints.build();
            addAction = a10.addAction(pendingIntent, build, null);
            addAction.addText(title, null, CollectionsKt.e(AuthenticationAction.SLICE_HINT_TITLE));
            build2 = a10.build();
            Intrinsics.checkNotNullExpressionValue(build2, "sliceBuilder.build()");
            return build2;
        }

        private Companion() {
        }
    }

    public AuthenticationAction(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        this.title = title;
        this.pendingIntent = pendingIntent;
        if (title.length() > 0) {
            return;
        }
        throw new IllegalArgumentException("title must not be empty");
    }

    @SuppressLint({"WrongConstant"})
    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final AuthenticationAction fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Slice toSlice(@NotNull AuthenticationAction authenticationAction) {
        return Companion.toSlice(authenticationAction);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @NotNull
    public final CharSequence getTitle() {
        return this.title;
    }
}
