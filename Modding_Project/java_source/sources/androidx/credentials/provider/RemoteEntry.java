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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RemoteEntry.kt */
@Metadata
/* loaded from: classes.dex */
public final class RemoteEntry {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int REVISION_ID = 1;
    @NotNull
    private static final String SLICE_HINT_PENDING_INTENT = "androidx.credentials.provider.remoteEntry.SLICE_HINT_PENDING_INTENT";
    @NotNull
    private static final String SLICE_SPEC_TYPE = "RemoteEntry";
    @NotNull
    private static final String TAG = "RemoteEntry";
    @NotNull
    private final PendingIntent pendingIntent;

    /* compiled from: RemoteEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private final PendingIntent pendingIntent;

        public Builder(@NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.pendingIntent = pendingIntent;
        }

        @NotNull
        public final RemoteEntry build() {
            return new RemoteEntry(this.pendingIntent);
        }
    }

    /* compiled from: RemoteEntry.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRemoteEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteEntry.kt\nandroidx/credentials/provider/RemoteEntry$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1855#2,2:135\n*S KotlinDebug\n*F\n+ 1 RemoteEntry.kt\nandroidx/credentials/provider/RemoteEntry$Companion\n*L\n120#1:135,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"WrongConstant"})
        @Nullable
        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final RemoteEntry fromSlice(@NotNull Slice slice) {
            List<Object> items;
            boolean hasHint;
            Intrinsics.checkNotNullParameter(slice, "slice");
            items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            PendingIntent pendingIntent = null;
            for (Object obj : items) {
                SliceItem a10 = f.a(obj);
                hasHint = a10.hasHint(RemoteEntry.SLICE_HINT_PENDING_INTENT);
                if (hasHint) {
                    pendingIntent = a10.getAction();
                }
            }
            try {
                Intrinsics.checkNotNull(pendingIntent);
                return new RemoteEntry(pendingIntent);
            } catch (Exception e10) {
                Log.i("RemoteEntry", "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Slice toSlice(@NotNull RemoteEntry remoteEntry) {
            Slice.Builder addHints;
            Slice build;
            Slice build2;
            Intrinsics.checkNotNullParameter(remoteEntry, "remoteEntry");
            PendingIntent pendingIntent = remoteEntry.getPendingIntent();
            d.a();
            Slice.Builder a10 = b.a(Uri.EMPTY, n.a("RemoteEntry", 1));
            addHints = c.a(a10).addHints(Collections.singletonList(RemoteEntry.SLICE_HINT_PENDING_INTENT));
            build = addHints.build();
            a10.addAction(pendingIntent, build, null);
            build2 = a10.build();
            Intrinsics.checkNotNullExpressionValue(build2, "sliceBuilder.build()");
            return build2;
        }

        private Companion() {
        }
    }

    public RemoteEntry(@NotNull PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        this.pendingIntent = pendingIntent;
    }

    @SuppressLint({"WrongConstant"})
    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final RemoteEntry fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Slice toSlice(@NotNull RemoteEntry remoteEntry) {
        return Companion.toSlice(remoteEntry);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }
}
