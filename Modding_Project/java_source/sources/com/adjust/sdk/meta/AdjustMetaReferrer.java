package com.adjust.sdk.meta;

import android.content.Context;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.scheduler.AsyncTaskExecutor;
/* loaded from: classes2.dex */
public class AdjustMetaReferrer {
    static boolean shouldReadMetaReferrer = true;

    /* loaded from: classes2.dex */
    class a extends AsyncTaskExecutor<Context, MetaInstallReferrerResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f4337a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4338b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ OnMetaInstallReferrerReadListener f4339c;

        a(Context context, String str, OnMetaInstallReferrerReadListener onMetaInstallReferrerReadListener) {
            this.f4337a = context;
            this.f4338b = str;
            this.f4339c = onMetaInstallReferrerReadListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        /* renamed from: a */
        public MetaInstallReferrerResult doInBackground(Context[] contextArr) {
            try {
                return MetaReferrerClient.getMetaInstallReferrer(this.f4337a, this.f4338b, AdjustFactory.getLogger(), false);
            } catch (Exception e10) {
                return new MetaInstallReferrerResult(e10.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        /* renamed from: b */
        public void onPostExecute(MetaInstallReferrerResult metaInstallReferrerResult) {
            if (metaInstallReferrerResult != null) {
                MetaInstallReferrerDetails metaInstallReferrerDetails = metaInstallReferrerResult.metaInstallReferrerDetails;
                if (metaInstallReferrerDetails != null) {
                    this.f4339c.onInstallReferrerDetailsRead(metaInstallReferrerDetails);
                    return;
                }
                String str = metaInstallReferrerResult.error;
                if (str != null) {
                    this.f4339c.onFail(str);
                    return;
                } else {
                    this.f4339c.onFail("Meta Install Referrer details null");
                    return;
                }
            }
            this.f4339c.onFail("Meta Install Referrer result null");
        }
    }

    public static void doNotReadMetaReferrer() {
        shouldReadMetaReferrer = false;
    }

    public static void getMetaInstallReferrer(Context context, String str, OnMetaInstallReferrerReadListener onMetaInstallReferrerReadListener) {
        if (onMetaInstallReferrerReadListener == null) {
            AdjustFactory.getLogger().error("onMetaInstallReferrerReadListener can not be null", new Object[0]);
        } else {
            new a(context, str, onMetaInstallReferrerReadListener).execute(context);
        }
    }

    public static void readMetaReferrer(Context context) {
        shouldReadMetaReferrer = true;
    }
}
