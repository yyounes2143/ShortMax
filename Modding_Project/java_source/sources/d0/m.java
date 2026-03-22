package d0;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageSource.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class m implements Closeable {

    /* compiled from: ImageSource.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class a {
    }

    public /* synthetic */ m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Nullable
    public abstract a d();

    @NotNull
    public abstract BufferedSource k();

    private m() {
    }
}
