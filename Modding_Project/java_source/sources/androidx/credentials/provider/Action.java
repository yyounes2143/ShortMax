package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Action.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
/* loaded from: classes.dex */
public final class Action {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String SLICE_HINT_PENDING_INTENT = "androidx.credentials.provider.action.SLICE_HINT_PENDING_INTENT";
    @NotNull
    private static final String SLICE_HINT_SUBTITLE = "androidx.credentials.provider.action.HINT_ACTION_SUBTEXT";
    @NotNull
    private static final String SLICE_HINT_TITLE = "androidx.credentials.provider.action.HINT_ACTION_TITLE";
    private static final int SLICE_SPEC_REVISION = 0;
    @NotNull
    private static final String SLICE_SPEC_TYPE = "Action";
    @NotNull
    private static final String TAG = "Action";
    @NotNull
    private final PendingIntent pendingIntent;
    @Nullable
    private final CharSequence subtitle;
    @NotNull
    private final CharSequence title;

    /* compiled from: Action.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private final PendingIntent pendingIntent;
        @Nullable
        private CharSequence subtitle;
        @NotNull
        private final CharSequence title;

        public Builder(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.title = title;
            this.pendingIntent = pendingIntent;
        }

        @NotNull
        public final Action build() {
            return new Action(this.title, this.pendingIntent, this.subtitle);
        }

        @NotNull
        public final Builder setSubtitle(@Nullable CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }
    }

    /* compiled from: Action.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1855#2,2:197\n*S KotlinDebug\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n*L\n177#1:197,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"WrongConstant"})
        @Nullable
        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final Action fromSlice(@NotNull Slice slice) {
            List<Object> items;
            boolean hasHint;
            boolean hasHint2;
            boolean hasHint3;
            Intrinsics.checkNotNullParameter(slice, "slice");
            items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = "";
            PendingIntent pendingIntent = null;
            CharSequence charSequence2 = null;
            for (Object obj : items) {
                SliceItem a10 = f.a(obj);
                hasHint = a10.hasHint(Action.SLICE_HINT_TITLE);
                if (hasHint) {
                    charSequence = a10.getText();
                    Intrinsics.checkNotNullExpressionValue(charSequence, "it.text");
                } else {
                    hasHint2 = a10.hasHint(Action.SLICE_HINT_SUBTITLE);
                    if (hasHint2) {
                        charSequence2 = a10.getText();
                    } else {
                        hasHint3 = a10.hasHint(Action.SLICE_HINT_PENDING_INTENT);
                        if (hasHint3) {
                            pendingIntent = a10.getAction();
                        }
                    }
                }
            }
            try {
                Intrinsics.checkNotNull(pendingIntent);
                return new Action(charSequence, pendingIntent, charSequence2);
            } catch (Exception e10) {
                Log.i(TTVideoEngineInterface.PLAY_API_KEY_ACTION, "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Slice toSlice(@NotNull Action action) {
            Slice.Builder addText;
            Slice.Builder addText2;
            Slice.Builder addHints;
            Slice build;
            Slice build2;
            Intrinsics.checkNotNullParameter(action, "action");
            CharSequence title = action.getTitle();
            CharSequence subtitle = action.getSubtitle();
            PendingIntent pendingIntent = action.getPendingIntent();
            d.a();
            Uri uri = Uri.EMPTY;
            e.a();
            addText = b.a(uri, n.a(TTVideoEngineInterface.PLAY_API_KEY_ACTION, 0)).addText(title, null, CollectionsKt.e(Action.SLICE_HINT_TITLE));
            addText2 = addText.addText(subtitle, null, CollectionsKt.e(Action.SLICE_HINT_SUBTITLE));
            addHints = c.a(addText2).addHints(Collections.singletonList(Action.SLICE_HINT_PENDING_INTENT));
            build = addHints.build();
            addText2.addAction(pendingIntent, build, null);
            build2 = addText2.build();
            Intrinsics.checkNotNullExpressionValue(build2, "sliceBuilder.build()");
            return build2;
        }

        private Companion() {
        }
    }

    public Action(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @Nullable CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        this.title = title;
        this.pendingIntent = pendingIntent;
        this.subtitle = charSequence;
        if (title.length() <= 0) {
            throw new IllegalArgumentException("title must not be empty");
        }
    }

    @SuppressLint({"WrongConstant"})
    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final Action fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Slice toSlice(@NotNull Action action) {
        return Companion.toSlice(action);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Nullable
    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final CharSequence getTitle() {
        return this.title;
    }

    public /* synthetic */ Action(CharSequence charSequence, PendingIntent pendingIntent, CharSequence charSequence2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, pendingIntent, (i10 & 4) != 0 ? null : charSequence2);
    }
}
