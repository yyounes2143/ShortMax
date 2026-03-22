package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.IResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final boolean f830a = false;

    /* renamed from: b  reason: collision with root package name */
    final Handler f831b = null;

    /* renamed from: c  reason: collision with root package name */
    IResultReceiver f832c;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ResultReceiver> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ResultReceiver[] newArray(int i10) {
            return new ResultReceiver[i10];
        }
    }

    /* loaded from: classes.dex */
    class b extends IResultReceiver.Stub {
        b() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public void a(int i10, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f831b;
            if (handler != null) {
                handler.post(new c(i10, bundle));
            } else {
                resultReceiver.a(i10, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f834a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f835b;

        c(int i10, Bundle bundle) {
            this.f834a = i10;
            this.f835b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.f834a, this.f835b);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f832c = IResultReceiver.Stub.i(parcel.readStrongBinder());
    }

    public void b(int i10, Bundle bundle) {
        if (this.f830a) {
            Handler handler = this.f831b;
            if (handler != null) {
                handler.post(new c(i10, bundle));
                return;
            } else {
                a(i10, bundle);
                return;
            }
        }
        IResultReceiver iResultReceiver = this.f832c;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.a(i10, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        synchronized (this) {
            try {
                if (this.f832c == null) {
                    this.f832c = new b();
                }
                parcel.writeStrongBinder(this.f832c.asBinder());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void a(int i10, Bundle bundle) {
    }
}
