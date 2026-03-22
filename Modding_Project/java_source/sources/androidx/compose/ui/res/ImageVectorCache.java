package androidx.compose.ui.res;

import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.vector.ImageVector;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VectorResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImageVectorCache {
    @NotNull
    private final HashMap<Key, WeakReference<ImageVectorEntry>> map = new HashMap<>();

    /* compiled from: VectorResources.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class ImageVectorEntry {
        public static final int $stable = 0;
        private final int configFlags;
        @NotNull
        private final ImageVector imageVector;

        public ImageVectorEntry(@NotNull ImageVector imageVector, int i10) {
            Intrinsics.checkNotNullParameter(imageVector, "imageVector");
            this.imageVector = imageVector;
            this.configFlags = i10;
        }

        public static /* synthetic */ ImageVectorEntry copy$default(ImageVectorEntry imageVectorEntry, ImageVector imageVector, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                imageVector = imageVectorEntry.imageVector;
            }
            if ((i11 & 2) != 0) {
                i10 = imageVectorEntry.configFlags;
            }
            return imageVectorEntry.copy(imageVector, i10);
        }

        @NotNull
        public final ImageVector component1() {
            return this.imageVector;
        }

        public final int component2() {
            return this.configFlags;
        }

        @NotNull
        public final ImageVectorEntry copy(@NotNull ImageVector imageVector, int i10) {
            Intrinsics.checkNotNullParameter(imageVector, "imageVector");
            return new ImageVectorEntry(imageVector, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImageVectorEntry)) {
                return false;
            }
            ImageVectorEntry imageVectorEntry = (ImageVectorEntry) obj;
            if (Intrinsics.areEqual(this.imageVector, imageVectorEntry.imageVector) && this.configFlags == imageVectorEntry.configFlags) {
                return true;
            }
            return false;
        }

        public final int getConfigFlags() {
            return this.configFlags;
        }

        @NotNull
        public final ImageVector getImageVector() {
            return this.imageVector;
        }

        public int hashCode() {
            return (this.imageVector.hashCode() * 31) + Integer.hashCode(this.configFlags);
        }

        @NotNull
        public String toString() {
            return "ImageVectorEntry(imageVector=" + this.imageVector + ", configFlags=" + this.configFlags + ')';
        }
    }

    /* compiled from: VectorResources.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key {
        public static final int $stable = 8;

        /* renamed from: id  reason: collision with root package name */
        private final int f1286id;
        @NotNull
        private final Resources.Theme theme;

        public Key(@NotNull Resources.Theme theme, int i10) {
            Intrinsics.checkNotNullParameter(theme, "theme");
            this.theme = theme;
            this.f1286id = i10;
        }

        public static /* synthetic */ Key copy$default(Key key, Resources.Theme theme, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                theme = key.theme;
            }
            if ((i11 & 2) != 0) {
                i10 = key.f1286id;
            }
            return key.copy(theme, i10);
        }

        @NotNull
        public final Resources.Theme component1() {
            return this.theme;
        }

        public final int component2() {
            return this.f1286id;
        }

        @NotNull
        public final Key copy(@NotNull Resources.Theme theme, int i10) {
            Intrinsics.checkNotNullParameter(theme, "theme");
            return new Key(theme, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (Intrinsics.areEqual(this.theme, key.theme) && this.f1286id == key.f1286id) {
                return true;
            }
            return false;
        }

        public final int getId() {
            return this.f1286id;
        }

        @NotNull
        public final Resources.Theme getTheme() {
            return this.theme;
        }

        public int hashCode() {
            return (this.theme.hashCode() * 31) + Integer.hashCode(this.f1286id);
        }

        @NotNull
        public String toString() {
            return "Key(theme=" + this.theme + ", id=" + this.f1286id + ')';
        }
    }

    public final void clear() {
        this.map.clear();
    }

    @Nullable
    public final ImageVectorEntry get(@NotNull Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        WeakReference<ImageVectorEntry> weakReference = this.map.get(key);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void prune(int i10) {
        Iterator<Map.Entry<Key, WeakReference<ImageVectorEntry>>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Key, WeakReference<ImageVectorEntry>> next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "it.next()");
            ImageVectorEntry imageVectorEntry = next.getValue().get();
            if (imageVectorEntry == null || Configuration.needNewResources(i10, imageVectorEntry.getConfigFlags())) {
                it.remove();
            }
        }
    }

    public final void set(@NotNull Key key, @NotNull ImageVectorEntry imageVectorEntry) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(imageVectorEntry, "imageVectorEntry");
        this.map.put(key, new WeakReference<>(imageVectorEntry));
    }
}
