package io.bidmachine;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.Device;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceConnectionParams.java */
/* loaded from: classes7.dex */
public final class w2 {
    @NonNull
    private Context.Device.Connection c(@NonNull android.content.Context context, @NonNull ConnectionType connectionType) {
        Context.Device.Connection.Builder newBuilder = Context.Device.Connection.newBuilder();
        newBuilder.setType(connectionType);
        newBuilder.setVpn(fr.c.p(context));
        newBuilder.setProxy(fr.c.i(context));
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull android.content.Context context, @NonNull Context.Device.Builder builder, @NonNull ConnectionType connectionType) {
        builder.setConnection(c(context, connectionType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull android.content.Context context, @NonNull Device.Builder builder, @NonNull ConnectionType connectionType) {
        builder.setConnection(c(context, connectionType));
    }
}
