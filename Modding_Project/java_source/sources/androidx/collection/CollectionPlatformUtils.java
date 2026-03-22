package androidx.collection;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionPlatformUtils.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class CollectionPlatformUtils {
    @NotNull
    public static final CollectionPlatformUtils INSTANCE = new CollectionPlatformUtils();

    private CollectionPlatformUtils() {
    }

    @NotNull
    public final IndexOutOfBoundsException createIndexOutOfBoundsException$collection() {
        return new ArrayIndexOutOfBoundsException();
    }
}
