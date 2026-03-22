package com.bytedance.sdk.component.ba.oJ;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public interface ba extends IInterface {
    int oJ(Uri uri, ContentValues contentValues, String str, String[] strArr) throws RemoteException;

    int oJ(Uri uri, String str, String[] strArr) throws RemoteException;

    String oJ(Uri uri) throws RemoteException;

    String oJ(Uri uri, ContentValues contentValues) throws RemoteException;

    Map oJ(Uri uri, String[] strArr, String str, String[] strArr2, String str2) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class oJ extends Binder implements ba {
        public oJ() {
            attachInterface(this, "com.bytedance.sdk.component.log.impl.IListenerEventManager");
        }

        public static ba oJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ba)) {
                return (ba) queryLocalInterface;
            }
            return new C0171oJ(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            Uri uri;
            Uri uri2;
            Uri uri3 = null;
            ContentValues contentValues = null;
            Uri uri4 = null;
            ContentValues contentValues2 = null;
            Uri uri5 = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                if (i10 != 1598968902) {
                                    return super.onTransact(i10, parcel, parcel2, i11);
                                }
                                parcel2.writeString("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                                return true;
                            }
                            parcel.enforceInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                            if (parcel.readInt() != 0) {
                                uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                            } else {
                                uri2 = null;
                            }
                            if (parcel.readInt() != 0) {
                                contentValues = (ContentValues) ContentValues.CREATOR.createFromParcel(parcel);
                            }
                            int oJ = oJ(uri2, contentValues, parcel.readString(), parcel.createStringArray());
                            parcel2.writeNoException();
                            parcel2.writeInt(oJ);
                            return true;
                        }
                        parcel.enforceInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                        if (parcel.readInt() != 0) {
                            uri4 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        int oJ2 = oJ(uri4, parcel.readString(), parcel.createStringArray());
                        parcel2.writeNoException();
                        parcel2.writeInt(oJ2);
                        return true;
                    }
                    parcel.enforceInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (parcel.readInt() != 0) {
                        uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    } else {
                        uri = null;
                    }
                    if (parcel.readInt() != 0) {
                        contentValues2 = (ContentValues) ContentValues.CREATOR.createFromParcel(parcel);
                    }
                    String oJ3 = oJ(uri, contentValues2);
                    parcel2.writeNoException();
                    parcel2.writeString(oJ3);
                    return true;
                }
                parcel.enforceInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                if (parcel.readInt() != 0) {
                    uri5 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                }
                String oJ4 = oJ(uri5);
                parcel2.writeNoException();
                parcel2.writeString(oJ4);
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.component.log.impl.IListenerEventManager");
            if (parcel.readInt() != 0) {
                uri3 = (Uri) Uri.CREATOR.createFromParcel(parcel);
            }
            Map oJ5 = oJ(uri3, parcel.createStringArray(), parcel.readString(), parcel.createStringArray(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeMap(oJ5);
            return true;
        }

        public static ba oJ() {
            return C0171oJ.oJ;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.bytedance.sdk.component.ba.oJ.ba$oJ$oJ  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0171oJ implements ba {
            public static ba oJ;
            private IBinder ZYk;

            C0171oJ(IBinder iBinder) {
                this.ZYk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.ZYk;
            }

            @Override // com.bytedance.sdk.component.ba.oJ.ba
            public Map oJ(Uri uri, String[] strArr, String str, String[] strArr2, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStringArray(strArr);
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr2);
                    obtain.writeString(str2);
                    if (!this.ZYk.transact(1, obtain, obtain2, 0) && oJ.oJ() != null) {
                        Map oJ2 = oJ.oJ().oJ(uri, strArr, str, strArr2, str2);
                        obtain2.recycle();
                        obtain.recycle();
                        return oJ2;
                    }
                    obtain2.readException();
                    HashMap readHashMap = obtain2.readHashMap(getClass().getClassLoader());
                    obtain2.recycle();
                    obtain.recycle();
                    return readHashMap;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }

            @Override // com.bytedance.sdk.component.ba.oJ.ba
            public String oJ(Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.ZYk.transact(2, obtain, obtain2, 0) && oJ.oJ() != null) {
                        String oJ2 = oJ.oJ().oJ(uri);
                        obtain2.recycle();
                        obtain.recycle();
                        return oJ2;
                    }
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }

            @Override // com.bytedance.sdk.component.ba.oJ.ba
            public String oJ(Uri uri, ContentValues contentValues) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (contentValues != null) {
                        obtain.writeInt(1);
                        contentValues.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.ZYk.transact(3, obtain, obtain2, 0) && oJ.oJ() != null) {
                        String oJ2 = oJ.oJ().oJ(uri, contentValues);
                        obtain2.recycle();
                        obtain.recycle();
                        return oJ2;
                    }
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }

            @Override // com.bytedance.sdk.component.ba.oJ.ba
            public int oJ(Uri uri, String str, String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr);
                    if (!this.ZYk.transact(4, obtain, obtain2, 0) && oJ.oJ() != null) {
                        int oJ2 = oJ.oJ().oJ(uri, str, strArr);
                        obtain2.recycle();
                        obtain.recycle();
                        return oJ2;
                    }
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }

            @Override // com.bytedance.sdk.component.ba.oJ.ba
            public int oJ(Uri uri, ContentValues contentValues, String str, String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.component.log.impl.IListenerEventManager");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (contentValues != null) {
                        obtain.writeInt(1);
                        contentValues.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr);
                    if (!this.ZYk.transact(5, obtain, obtain2, 0) && oJ.oJ() != null) {
                        int oJ2 = oJ.oJ().oJ(uri, contentValues, str, strArr);
                        obtain2.recycle();
                        obtain.recycle();
                        return oJ2;
                    }
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }
        }
    }
}
