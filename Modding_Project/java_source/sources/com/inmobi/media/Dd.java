package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Dd implements InterfaceC3105p0 {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f23598a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23599b;

    public Dd(String location, byte[] imageBytes) {
        Intrinsics.checkNotNullParameter(imageBytes, "imageBytes");
        Intrinsics.checkNotNullParameter(location, "location");
        this.f23598a = imageBytes;
        this.f23599b = location;
    }

    @Override // com.inmobi.media.InterfaceC3105p0
    public final Object a() {
        byte[] bArr = this.f23598a;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Intrinsics.checkNotNull(decodeByteArray);
        StringBuilder sb2 = new StringBuilder();
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        sb2.append(uuid);
        sb2.append(".jpg");
        String sb3 = sb2.toString();
        File file = new File(this.f23599b);
        if (!file.exists()) {
            file.mkdirs();
        }
        decodeByteArray.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(new File(this.f23599b + '/' + sb3)));
        Intrinsics.checkNotNullParameter("StoreProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("screenshot file saved", "message");
        Log.i("StoreProcess", "screenshot file saved");
        return this.f23599b + '/' + sb3;
    }
}
