package com.adjust.sdk.google.lvl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.google.lvl.LicenseChecker;
/* loaded from: classes2.dex */
public class LicenseChecker {
    private static final int ERROR_BINDER_DIED = -6;
    private static final int ERROR_BIND_FAILED = -5;
    private static final int ERROR_GENERIC = -1;
    private static final int ERROR_NO_BINDER = -3;
    private static final int ERROR_REMOTE_EXCEPTION = -4;
    private static final int ERROR_TRANSACT_FAILED = -2;
    private static final String GOOGLE_PLAY_PACKAGE = "com.android.vending";
    private static final String LICENSING_SERVICE_DESCRIPTOR = "com.android.vending.licensing.ILicensingService";
    private static final int MAX_RETRIES = 3;
    private static final String RESULT_LISTENER_DESCRIPTOR = "com.android.vending.licensing.ILicenseResultListener";
    private static final int TRANSACTION_CHECK_LICENSE = 1;
    private final ILogger logger;
    private boolean mBound;
    private final LicenseRawCallback mCallback;
    private final Context mContext;
    private IBinder mServiceBinder;
    private final long timestamp;
    private int retryCount = 0;
    private final ServiceConnection mServiceConnection = new a();
    private final b resultListenerBinder = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ServiceConnection {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            LicenseChecker.this.logger.error("LVL binder died unexpectedly", new Object[0]);
            LicenseChecker.this.mCallback.onError(-6);
            LicenseChecker.this.onDestroy();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LicenseChecker.this.logger.debug("LVL service connected", new Object[0]);
            LicenseChecker.this.mServiceBinder = iBinder;
            LicenseChecker.this.mBound = true;
            LicenseChecker.this.retryCount = 0;
            try {
                LicenseChecker.this.mServiceBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.adjust.sdk.google.lvl.a
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        LicenseChecker.a.this.b();
                    }
                }, 0);
            } catch (RemoteException e10) {
                LicenseChecker.this.logger.error("LVL failed to link binder death recipient", e10);
            }
            LicenseChecker.this.executeLicenseCheck();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LicenseChecker.this.logger.debug("LVL service disconnected", new Object[0]);
            LicenseChecker.this.mServiceBinder = null;
            LicenseChecker.this.mBound = false;
        }
    }

    public LicenseChecker(Context context, LicenseRawCallback licenseRawCallback, ILogger iLogger, long j10) {
        this.mContext = context;
        this.mCallback = licenseRawCallback;
        this.logger = iLogger;
        this.timestamp = j10;
    }

    static /* synthetic */ int access$308(LicenseChecker licenseChecker) {
        int i10 = licenseChecker.retryCount;
        licenseChecker.retryCount = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeLicenseCheck() {
        try {
            if (this.mServiceBinder == null) {
                this.logger.error("LVL binder unavailable for license check", new Object[0]);
                this.mCallback.onError(-3);
                return;
            }
            String packageName = this.mContext.getPackageName();
            long generateNonce = generateNonce(this.timestamp);
            ILogger iLogger = this.logger;
            iLogger.debug("LVL generated nonce: " + generateNonce, new Object[0]);
            Parcel obtain = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(LICENSING_SERVICE_DESCRIPTOR);
                obtain.writeLong(generateNonce);
                obtain.writeString(packageName);
                obtain.writeStrongBinder(this.resultListenerBinder);
                boolean transact = this.mServiceBinder.transact(1, obtain, null, 1);
                ILogger iLogger2 = this.logger;
                iLogger2.debug("LVL binder transact sent (code 1): " + transact, new Object[0]);
                if (!transact) {
                    this.logger.error("LVL binder transact failed to enqueue", new Object[0]);
                    this.mCallback.onError(-2);
                }
                obtain.recycle();
            } catch (Throwable th2) {
                obtain.recycle();
                throw th2;
            }
        } catch (RemoteException e10) {
            this.logger.error("LVL remote exception during license check: ", e10);
            this.mCallback.onError(-4);
        } catch (Exception e11) {
            this.logger.error("LVL license check failed: ", e11);
            this.mCallback.onError(-1);
        }
    }

    public static long generateNonce(long j10) {
        return ((j10 & 72057594037927935L) << 8) | 1;
    }

    public synchronized void checkAccess() {
        if (this.mBound) {
            return;
        }
        this.logger.debug("LVL License check starts", new Object[0]);
        Intent intent = new Intent(LICENSING_SERVICE_DESCRIPTOR);
        intent.setPackage("com.android.vending");
        boolean bindService = this.mContext.bindService(intent, this.mServiceConnection, 1);
        ILogger iLogger = this.logger;
        iLogger.debug("LVL bindService result: " + bindService, new Object[0]);
        if (!bindService) {
            this.logger.error("LVL failed to bind licensing service", new Object[0]);
            this.mCallback.onError(-5);
        }
    }

    public void onDestroy() {
        this.logger.debug("LVL license checker destroyed", new Object[0]);
        if (this.mBound) {
            this.mContext.unbindService(this.mServiceConnection);
            this.mBound = false;
        }
        this.mServiceBinder = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends Binder implements IInterface {
        b() {
            attachInterface(this, LicenseChecker.RESULT_LISTENER_DESCRIPTOR);
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                if (parcel2 != null) {
                    parcel2.writeString(LicenseChecker.RESULT_LISTENER_DESCRIPTOR);
                }
                return true;
            } else if (i10 == 1) {
                try {
                    parcel.enforceInterface(LicenseChecker.RESULT_LISTENER_DESCRIPTOR);
                    int readInt = parcel.readInt();
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    ILogger iLogger = LicenseChecker.this.logger;
                    iLogger.debug("LVL received license response: " + readInt, new Object[0]);
                    if (new LicenseResponseHandler(LicenseChecker.this.mCallback, LicenseChecker.this.logger, 3).handleResponse(readInt, readString, readString2, LicenseChecker.this.retryCount)) {
                        LicenseChecker.access$308(LicenseChecker.this);
                        ILogger iLogger2 = LicenseChecker.this.logger;
                        iLogger2.debug("LVL retrying license check... Attempt: " + LicenseChecker.this.retryCount, new Object[0]);
                        LicenseChecker.this.executeLicenseCheck();
                    } else {
                        LicenseChecker.this.onDestroy();
                    }
                    return true;
                } catch (Exception e10) {
                    LicenseChecker.this.logger.error("LVL failed to process license response: ", e10);
                    LicenseChecker.this.mCallback.onError(-1);
                    LicenseChecker.this.onDestroy();
                    return true;
                }
            } else {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
