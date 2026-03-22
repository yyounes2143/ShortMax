package tu;

import android.util.Log;
import com.amazonaws.mobile.client.Callback;
import com.amazonaws.mobile.client.UserStateDetails;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes8.dex */
public final class a implements Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f67698a;

    public a(CountDownLatch countDownLatch) {
        this.f67698a = countDownLatch;
    }

    @Override // com.amazonaws.mobile.client.Callback
    public final void onError(Exception exc) {
        Log.e(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "onError: ", exc);
        this.f67698a.countDown();
    }

    @Override // com.amazonaws.mobile.client.Callback
    public final void onResult(Object obj) {
        UserStateDetails userStateDetails = (UserStateDetails) obj;
        this.f67698a.countDown();
    }
}
