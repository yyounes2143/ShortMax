package com.facebook.fresco.vito.source;

import android.net.Uri;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingleImageSourceImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class SingleImageSourceImpl implements SingleImageSource {
    @Nullable
    private final Map<String, Object> extras;
    @NotNull
    private final Uri imageUri;
    @NotNull
    private final Uri uri;

    public SingleImageSourceImpl(@NotNull Uri uri, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.uri = uri;
        this.extras = map;
        this.imageUri = getUri();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SingleImageSourceImpl copy$default(SingleImageSourceImpl singleImageSourceImpl, Uri uri, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uri = singleImageSourceImpl.uri;
        }
        if ((i10 & 2) != 0) {
            map = singleImageSourceImpl.extras;
        }
        return singleImageSourceImpl.copy(uri, map);
    }

    @NotNull
    public final Uri component1() {
        return this.uri;
    }

    @Nullable
    public final Map<String, Object> component2() {
        return this.extras;
    }

    @NotNull
    public final SingleImageSourceImpl copy(@NotNull Uri uri, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return new SingleImageSourceImpl(uri, map);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(SingleImageSourceImpl.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.source.SingleImageSourceImpl");
        SingleImageSourceImpl singleImageSourceImpl = (SingleImageSourceImpl) obj;
        if (Intrinsics.areEqual(getImageUri(), singleImageSourceImpl.getImageUri()) && Intrinsics.areEqual(getExtras(), singleImageSourceImpl.getExtras())) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object getExtra(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, Object> extras = getExtras();
        if (extras != null) {
            return extras.get(key);
        }
        return null;
    }

    @Override // com.facebook.fresco.vito.source.UriImageSource
    @Nullable
    public Map<String, Object> getExtras() {
        return this.extras;
    }

    @Override // com.facebook.fresco.vito.source.UriImageSource
    @NotNull
    public Uri getImageUri() {
        return this.imageUri;
    }

    @Override // com.facebook.fresco.vito.source.SingleImageSource
    @Nullable
    public String getStringExtra(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object extra = getExtra(key);
        if (extra instanceof String) {
            return (String) extra;
        }
        return null;
    }

    @Override // com.facebook.fresco.vito.source.SingleImageSource
    @NotNull
    public Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        int i10;
        int hashCode = getImageUri().hashCode() * 31;
        Map<String, Object> extras = getExtras();
        if (extras != null) {
            i10 = extras.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        Uri uri = this.uri;
        Map<String, Object> map = this.extras;
        return "SingleImageSourceImpl(uri=" + uri + ", extras=" + map + ")";
    }

    public /* synthetic */ SingleImageSourceImpl(Uri uri, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, (i10 & 2) != 0 ? null : map);
    }
}
