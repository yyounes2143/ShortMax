package tu;

import android.content.Context;
import android.util.Log;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.mobile.client.AWSMobileClient;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility;
import com.amazonaws.regions.Region;
import com.amazonaws.services.s3.AmazonS3Client;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static AmazonS3Client f67699a;

    /* renamed from: b  reason: collision with root package name */
    public static AWSMobileClient f67700b;

    /* renamed from: c  reason: collision with root package name */
    public static TransferUtility f67701c;

    public final synchronized AWSCredentialsProvider a(Context context) {
        try {
            if (f67700b == null) {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                AWSMobileClient.q().x(context, new a(countDownLatch));
                try {
                    if (countDownLatch.await(10L, TimeUnit.SECONDS)) {
                        f67700b = AWSMobileClient.q();
                    } else {
                        Log.e(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "AWSMobileClient.initialize 超时（10s），跳过初始化");
                    }
                } catch (InterruptedException e10) {
                    Log.e(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "AWSMobileClient.initialize 被中断", e10);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f67700b;
    }

    public final synchronized AmazonS3Client b(Context context) {
        if (f67699a == null) {
            try {
                f67699a = new AmazonS3Client(a(context), Region.f(new AWSConfiguration(context).e("S3TransferUtility").getString("Region")));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return f67699a;
    }

    public final synchronized TransferUtility c(Context context) {
        try {
            if (f67701c == null) {
                f67701c = TransferUtility.d().c(context).d(b(context)).a(new AWSConfiguration(context)).b();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f67701c;
    }
}
