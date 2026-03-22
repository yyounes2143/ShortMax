package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuiltInSerializer.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DefaultParcelableSerializer extends ParcelableSerializer<Parcelable> {
    @NotNull
    public static final DefaultParcelableSerializer INSTANCE = new DefaultParcelableSerializer();

    private DefaultParcelableSerializer() {
    }
}
