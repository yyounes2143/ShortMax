package com.amazonaws.mobileconnectors.s3.transferutility;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;
/* loaded from: classes2.dex */
public class TransferService extends Service {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f5696d = LogFactory.b(TransferService.class);

    /* renamed from: e  reason: collision with root package name */
    static TransferNetworkLossHandler f5697e;

    /* renamed from: a  reason: collision with root package name */
    boolean f5698a = true;

    /* renamed from: b  reason: collision with root package name */
    private int f5699b = 3462;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5700c = true;

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) == 0) {
            return;
        }
        printWriter.printf("network status: %s\n", Boolean.valueOf(f5697e.e()));
        Map<Integer, TransferRecord> e10 = TransferStatusUpdater.c(this).e();
        printWriter.printf("# of active transfers: %d\n", Integer.valueOf(e10.size()));
        for (TransferRecord transferRecord : e10.values()) {
            printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.f5683p, transferRecord.f5684q, transferRecord.f5682o, Long.valueOf(transferRecord.f5675h), Long.valueOf(transferRecord.f5676i));
        }
        printWriter.flush();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log log = f5696d;
        log.j("Starting Transfer Service to listen for network connectivity changes.");
        f5697e = TransferNetworkLossHandler.d(getApplicationContext());
        synchronized (this) {
            if (this.f5698a) {
                try {
                    log.j("Registering the network receiver");
                    registerReceiver(f5697e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f5698a = false;
                } catch (IllegalArgumentException unused) {
                    f5696d.g("Ignoring the exception trying to register the receiver for connectivity change.");
                } catch (IllegalStateException unused2) {
                    f5696d.g("Ignoring the leak in registering the receiver.");
                }
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                f5696d.j("Moving the service out of the Foreground state.");
                synchronized (this) {
                    stopForeground(this.f5700c);
                }
            }
        } catch (Exception e10) {
            Log log = f5696d;
            log.c("Error in moving the service out of the foreground state: " + e10);
        }
        try {
            f5696d.j("De-registering the network receiver.");
            synchronized (this) {
                if (!this.f5698a) {
                    unregisterReceiver(f5697e);
                    this.f5698a = true;
                    f5697e = null;
                }
            }
        } catch (IllegalArgumentException unused) {
            f5696d.g("Exception trying to de-register the network receiver");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                synchronized (this) {
                    Notification notification = (Notification) intent.getParcelableExtra("notification");
                    if (notification != null) {
                        this.f5699b = intent.getIntExtra("ongoing-notification-id", this.f5699b);
                        this.f5700c = intent.getBooleanExtra("remove-notification", this.f5700c);
                        f5696d.j("Putting the service in Foreground state.");
                        startForeground(this.f5699b, notification);
                    } else {
                        f5696d.c("No notification is passed in the intent. Unable to transition to foreground.");
                    }
                }
            } catch (Exception e10) {
                Log log = f5696d;
                log.c("Error in moving the service to foreground state: " + e10);
            }
        }
        synchronized (this) {
            if (this.f5698a) {
                try {
                    try {
                        f5696d.j("Registering the network receiver");
                        registerReceiver(f5697e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f5698a = false;
                    } catch (IllegalStateException unused) {
                        f5696d.g("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException unused2) {
                    f5696d.g("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
        return 1;
    }
}
