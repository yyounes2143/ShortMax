package androidx.savedstate.compose.serialization.serializers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import st.t;
/* compiled from: MutableStateSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MutableStateSerializerKt {
    public static final /* synthetic */ <T> MutableStateSerializer<T> MutableStateSerializer() {
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        return new MutableStateSerializer<>(t.b(null));
    }
}
