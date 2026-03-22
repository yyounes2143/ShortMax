package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class AFb1mSDK extends AFb1uSDK<String> {
    public AFb1mSDK(Context context, Executor executor) {
        super(context, executor, "com.facebook.katana.provider.AttributionIdProvider", "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.appsflyer.internal.AFb1uSDK
    /* renamed from: AFAdRevenueData */
    public String getRevenue() {
        Cursor cursor;
        Throwable th2;
        try {
            ContentResolver contentResolver = this.getMonetizationNetwork.getContentResolver();
            StringBuilder sb2 = new StringBuilder("content://");
            sb2.append(this.getMediationNetwork);
            cursor = contentResolver.query(Uri.parse(sb2.toString()), new String[]{TTVideoEngineInterface.PLAY_API_KEY_APPID}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow(TTVideoEngineInterface.PLAY_API_KEY_APPID));
                        cursor.close();
                        return string;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th2;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            cursor = null;
            th2 = th4;
        }
    }

    @Nullable
    public final String getMediationNetwork() {
        this.AFAdRevenueData.execute(this.getRevenue);
        return (String) super.getMonetizationNetwork();
    }

    @Override // com.appsflyer.internal.AFb1uSDK
    @Nullable
    public final /* synthetic */ String getMonetizationNetwork() {
        this.AFAdRevenueData.execute(this.getRevenue);
        return (String) super.getMonetizationNetwork();
    }
}
