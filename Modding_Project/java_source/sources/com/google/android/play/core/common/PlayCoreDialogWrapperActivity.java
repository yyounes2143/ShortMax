package com.google.android.play.core.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.play:core-common@@2.0.4 */
/* loaded from: classes5.dex */
public class PlayCoreDialogWrapperActivity extends Activity {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f19823a;

    private final void a() {
        ResultReceiver resultReceiver = this.f19823a;
        if (resultReceiver != null) {
            resultReceiver.send(3, new Bundle());
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i10, int i11, Intent intent) {
        ResultReceiver resultReceiver;
        super.onActivityResult(i10, i11, intent);
        if (i10 == 0 && (resultReceiver = this.f19823a) != null) {
            if (i11 == -1) {
                resultReceiver.send(1, new Bundle());
            } else if (i11 == 0) {
                resultReceiver.send(2, new Bundle());
            }
        }
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        Intent intent;
        int intExtra = getIntent().getIntExtra("window_flags", 0);
        PendingIntent pendingIntent = null;
        if (intExtra != 0) {
            getWindow().getDecorView().setSystemUiVisibility(intExtra);
            Intent intent2 = new Intent();
            intent2.putExtra("window_flags", intExtra);
            intent = intent2;
        } else {
            intent = null;
        }
        super.onCreate(bundle);
        if (bundle == null) {
            this.f19823a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                pendingIntent = (PendingIntent) extras.get("confirmation_intent");
            }
            if (extras != null && pendingIntent != null) {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 0, intent, 0, 0, 0);
                    return;
                } catch (IntentSender.SendIntentException unused) {
                    a();
                    finish();
                    return;
                }
            }
            a();
            finish();
            return;
        }
        this.f19823a = (ResultReceiver) bundle.getParcelable("result_receiver");
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("result_receiver", this.f19823a);
    }
}
