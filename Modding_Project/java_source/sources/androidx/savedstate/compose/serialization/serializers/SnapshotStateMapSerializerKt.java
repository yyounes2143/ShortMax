package androidx.savedstate.compose.serialization.serializers;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlinx.serialization.KSerializer;
import st.t;
/* compiled from: SnapshotStateMapSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SnapshotStateMapSerializerKt {
    public static final /* synthetic */ <K, V> SnapshotStateMapSerializer<K, V> SnapshotStateMapSerializer() {
        Intrinsics.reifiedOperationMarker(6, "K");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        KSerializer<Object> b10 = t.b(null);
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        return new SnapshotStateMapSerializer<>(b10, t.b(null));
    }
}
