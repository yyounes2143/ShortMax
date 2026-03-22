package com.huawei.hms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.common.internal.safeparcel.SafeParcelWriter;
import com.huawei.hms.common.sqlite.HMSCursorWrapper;
import com.huawei.hms.support.log.HMSLog;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final String TYPE_BOOLEAN = "type_boolean";
    public static final String TYPE_BYTE_ARRAY = "type_byte_array";
    public static final String TYPE_DOUBLE = "type_double";
    public static final String TYPE_FLOAT = "type_float";
    public static final String TYPE_INT = "type_int";
    public static final String TYPE_LONG = "type_long";
    public static final String TYPE_STRING = "type_string";

    /* renamed from: a  reason: collision with root package name */
    private boolean f21998a;

    /* renamed from: b  reason: collision with root package name */
    private int f21999b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f22000c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f22001d;

    /* renamed from: e  reason: collision with root package name */
    private CursorWindow[] f22002e;

    /* renamed from: f  reason: collision with root package name */
    private int f22003f;

    /* renamed from: g  reason: collision with root package name */
    private Bundle f22004g;

    /* renamed from: h  reason: collision with root package name */
    private int[] f22005h;

    /* renamed from: i  reason: collision with root package name */
    private int f22006i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22007j;
    public static final Parcelable.Creator<DataHolder> CREATOR = new DataHolderCreator();

    /* renamed from: k  reason: collision with root package name */
    private static final Builder f21997k = new DataHolderBuilderCreator(new String[0], null);

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String[] f22008a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<HashMap<String, Object>> f22009b;

        /* renamed from: c  reason: collision with root package name */
        private final String f22010c;

        /* renamed from: d  reason: collision with root package name */
        private final HashMap<Object, Integer> f22011d;

        public DataHolder build(int i10) {
            return new DataHolder(this, i10, (Bundle) null);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.huawei.hms.common.data.DataHolder.Builder setDataForContentValuesHashMap(java.util.HashMap<java.lang.String, java.lang.Object> r4) {
            /*
                r3 = this;
                java.lang.String r0 = "contentValuesHashMap cannot be null"
                com.huawei.hms.common.internal.Preconditions.checkNotNull(r4, r0)
                java.lang.String r0 = r3.f22010c
                if (r0 == 0) goto L2e
                java.lang.Object r0 = r4.get(r0)
                if (r0 == 0) goto L2e
                java.util.HashMap<java.lang.Object, java.lang.Integer> r1 = r3.f22011d
                java.lang.Object r1 = r1.get(r0)
                java.lang.Integer r1 = (java.lang.Integer) r1
                if (r1 == 0) goto L1f
                int r0 = r1.intValue()
                r1 = 1
                goto L30
            L1f:
                java.util.HashMap<java.lang.Object, java.lang.Integer> r1 = r3.f22011d
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r3.f22009b
                int r2 = r2.size()
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                r1.put(r0, r2)
            L2e:
                r0 = 0
                r1 = r0
            L30:
                if (r1 == 0) goto L3d
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r3.f22009b
                r1.remove(r0)
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r3.f22009b
                r1.add(r0, r4)
                goto L42
            L3d:
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r3.f22009b
                r0.add(r4)
            L42:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.data.DataHolder.Builder.setDataForContentValuesHashMap(java.util.HashMap):com.huawei.hms.common.data.DataHolder$Builder");
        }

        public Builder withRow(ContentValues contentValues) {
            Preconditions.checkNotNull(contentValues, "contentValues cannot be null");
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return setDataForContentValuesHashMap(hashMap);
        }

        private Builder(String[] strArr, String str) {
            Preconditions.checkNotNull(strArr, "builderColumnsP cannot be null");
            this.f22008a = strArr;
            this.f22009b = new ArrayList<>();
            this.f22010c = str;
            this.f22011d = new HashMap<>();
        }

        public DataHolder build(int i10, Bundle bundle) {
            return new DataHolder(this, i10, bundle, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(String[] strArr, String str, DataHolderBuilderCreator dataHolderBuilderCreator) {
            this(strArr, null);
        }
    }

    /* loaded from: classes5.dex */
    public static class DataHolderException extends RuntimeException {
        public DataHolderException(String str) {
            super(str);
        }
    }

    private void a(String str, int i10) {
        String str2;
        Bundle bundle = this.f22001d;
        if (bundle != null && bundle.containsKey(str)) {
            if (isClosed()) {
                str2 = "buffer has been closed";
            } else if (i10 >= 0 && i10 < this.f22006i) {
                str2 = "";
            } else {
                str2 = "row is out of index:" + i10;
            }
        } else {
            str2 = "cannot find column: " + str;
        }
        Preconditions.checkArgument(str2.isEmpty(), str2);
    }

    public static Builder builder(String[] strArr) {
        return new Builder(strArr, (String) null);
    }

    private static CursorWindow[] c(Builder builder, int i10) {
        if (builder.f22008a.length == 0) {
            return new CursorWindow[0];
        }
        if (i10 < 0 || i10 >= builder.f22009b.size()) {
            i10 = builder.f22009b.size();
        }
        ArrayList<CursorWindow> g10 = g(builder, i10, builder.f22009b.subList(0, i10));
        return (CursorWindow[]) g10.toArray(new CursorWindow[g10.size()]);
    }

    private static CursorWindow[] d(HMSCursorWrapper hMSCursorWrapper) {
        int i10;
        ArrayList arrayList = new ArrayList();
        try {
            int count = hMSCursorWrapper.getCount();
            CursorWindow window = hMSCursorWrapper.getWindow();
            if (window != null && window.getStartPosition() == 0) {
                window.acquireReference();
                hMSCursorWrapper.setWindow(null);
                arrayList.add(window);
                i10 = window.getNumRows();
            } else {
                i10 = 0;
            }
            arrayList.addAll(l(hMSCursorWrapper, i10, count));
            return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
        } catch (Throwable th2) {
            try {
                HMSLog.e("DataHolder", "fail to getCursorWindows: " + th2.getMessage());
                return new CursorWindow[0];
            } finally {
                hMSCursorWrapper.close();
            }
        }
    }

    public static DataHolder empty(int i10) {
        return new DataHolder(f21997k, i10, (Bundle) null);
    }

    private static ArrayList<CursorWindow> g(Builder builder, int i10, List list) {
        CursorWindow cursorWindow;
        boolean z10;
        ArrayList<CursorWindow> arrayList = new ArrayList<>();
        CursorWindow cursorWindow2 = new CursorWindow((String) null);
        cursorWindow2.setNumColumns(builder.f22008a.length);
        arrayList.add(cursorWindow2);
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                if (!cursorWindow2.allocRow()) {
                    HMSLog.d("DataHolder", "Failed to allocate a row");
                    cursorWindow = new CursorWindow((String) null);
                    try {
                        cursorWindow.setStartPosition(i11);
                        cursorWindow.setNumColumns(builder.f22008a.length);
                        if (!cursorWindow.allocRow()) {
                            HMSLog.e("DataHolder", "Failed to retry to allocate a row");
                            return arrayList;
                        }
                        arrayList.add(cursorWindow);
                        cursorWindow2 = cursorWindow;
                    } catch (RuntimeException unused) {
                        Iterator<CursorWindow> it = arrayList.iterator();
                        while (it.hasNext()) {
                            it.next().close();
                        }
                        HMSLog.w("DataHolder", "iter CursorWindow failed, RuntimeException occured.");
                        cursorWindow2 = cursorWindow;
                    }
                }
                HashMap hashMap = (HashMap) list.get(i11);
                z10 = true;
                for (int i12 = 0; i12 < builder.f22008a.length && (z10 = m(cursorWindow2, hashMap.get(builder.f22008a[i12]), i11, i12)); i12++) {
                }
            } catch (RuntimeException unused2) {
                cursorWindow = cursorWindow2;
            }
            if (!z10) {
                HMSLog.d("DataHolder", "fail to put data for row " + i11);
                cursorWindow2.freeLastRow();
                CursorWindow cursorWindow3 = new CursorWindow((String) null);
                cursorWindow3.setStartPosition(i11);
                cursorWindow3.setNumColumns(builder.f22008a.length);
                arrayList.add(cursorWindow3);
                break;
            }
            continue;
        }
        return arrayList;
    }

    private static ArrayList<CursorWindow> l(HMSCursorWrapper hMSCursorWrapper, int i10, int i11) {
        ArrayList<CursorWindow> arrayList = new ArrayList<>();
        while (i10 < i11 && hMSCursorWrapper.moveToPosition(i10)) {
            CursorWindow window = hMSCursorWrapper.getWindow();
            if (window == null) {
                window = new CursorWindow((String) null);
                window.setStartPosition(i10);
                hMSCursorWrapper.fillWindow(i10, window);
            } else {
                window.acquireReference();
                hMSCursorWrapper.setWindow(null);
            }
            if (window.getNumRows() == 0) {
                break;
            }
            arrayList.add(window);
            i10 = window.getNumRows() + window.getStartPosition();
        }
        return arrayList;
    }

    private static boolean m(CursorWindow cursorWindow, Object obj, int i10, int i11) throws IllegalArgumentException {
        long j10;
        if (obj == null) {
            return cursorWindow.putNull(i10, i11);
        }
        if (obj instanceof Boolean) {
            if (((Boolean) obj).booleanValue()) {
                j10 = 1;
            } else {
                j10 = 0;
            }
            return cursorWindow.putLong(j10, i10, i11);
        } else if (obj instanceof Integer) {
            return cursorWindow.putLong(((Integer) obj).intValue(), i10, i11);
        } else {
            if (obj instanceof Long) {
                return cursorWindow.putLong(((Long) obj).longValue(), i10, i11);
            }
            if (obj instanceof Float) {
                return cursorWindow.putDouble(((Float) obj).floatValue(), i10, i11);
            }
            if (obj instanceof Double) {
                return cursorWindow.putDouble(((Double) obj).doubleValue(), i10, i11);
            }
            if (obj instanceof String) {
                return cursorWindow.putString((String) obj, i10, i11);
            }
            if (obj instanceof byte[]) {
                return cursorWindow.putBlob((byte[]) obj, i10, i11);
            }
            throw new IllegalArgumentException("unsupported type for column: " + obj);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (!this.f21998a) {
                for (CursorWindow cursorWindow : this.f22002e) {
                    cursorWindow.close();
                }
                this.f21998a = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void collectColumsAndCount() {
        this.f22001d = new Bundle();
        String[] strArr = this.f22000c;
        int i10 = 0;
        if (strArr != null && strArr.length != 0) {
            int i11 = 0;
            while (true) {
                String[] strArr2 = this.f22000c;
                if (i11 >= strArr2.length) {
                    break;
                }
                this.f22001d.putInt(strArr2[i11], i11);
                i11++;
            }
            CursorWindow[] cursorWindowArr = this.f22002e;
            if (cursorWindowArr != null && cursorWindowArr.length != 0) {
                this.f22005h = new int[cursorWindowArr.length];
                int i12 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr2 = this.f22002e;
                    if (i10 < cursorWindowArr2.length) {
                        this.f22005h[i10] = i12;
                        i12 = cursorWindowArr2[i10].getStartPosition() + this.f22002e[i10].getNumRows();
                        i10++;
                    } else {
                        this.f22006i = i12;
                        return;
                    }
                }
            } else {
                this.f22006i = 0;
            }
        } else {
            this.f22006i = 0;
        }
    }

    public final void copyToBuffer(String str, int i10, int i11, CharArrayBuffer charArrayBuffer) {
        a(str, i10);
        this.f22002e[i11].copyStringToBuffer(i10, this.f22001d.getInt(str), charArrayBuffer);
    }

    protected final void finalize() throws Throwable {
        if (this.f22007j && this.f22002e.length > 0 && !isClosed()) {
            close();
        }
        super.finalize();
    }

    public final int getCount() {
        return this.f22006i;
    }

    public final Bundle getMetadata() {
        return this.f22004g;
    }

    public final int getStatusCode() {
        return this.f22003f;
    }

    public final Object getValue(String str, int i10, int i11, String str2) {
        boolean z10 = true;
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case -1092271849:
                if (str2.equals(TYPE_FLOAT)) {
                    c10 = 0;
                    break;
                }
                break;
            case -870070237:
                if (str2.equals(TYPE_BOOLEAN)) {
                    c10 = 1;
                    break;
                }
                break;
            case -675993238:
                if (str2.equals(TYPE_INT)) {
                    c10 = 2;
                    break;
                }
                break;
            case 445002870:
                if (str2.equals(TYPE_DOUBLE)) {
                    c10 = 3;
                    break;
                }
                break;
            case 519136353:
                if (str2.equals(TYPE_LONG)) {
                    c10 = 4;
                    break;
                }
                break;
            case 878975158:
                if (str2.equals(TYPE_STRING)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1300508295:
                if (str2.equals(TYPE_BYTE_ARRAY)) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                a(str, i10);
                return Float.valueOf(this.f22002e[i11].getFloat(i10, this.f22001d.getInt(str)));
            case 1:
                a(str, i10);
                if (this.f22002e[i11].getLong(i10, this.f22001d.getInt(str)) != 1) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            case 2:
                a(str, i10);
                return Integer.valueOf(this.f22002e[i11].getInt(i10, this.f22001d.getInt(str)));
            case 3:
                a(str, i10);
                return Double.valueOf(this.f22002e[i11].getDouble(i10, this.f22001d.getInt(str)));
            case 4:
                a(str, i10);
                return Long.valueOf(this.f22002e[i11].getLong(i10, this.f22001d.getInt(str)));
            case 5:
                a(str, i10);
                return this.f22002e[i11].getString(i10, this.f22001d.getInt(str));
            case 6:
                a(str, i10);
                return this.f22002e[i11].getBlob(i10, this.f22001d.getInt(str));
            default:
                return null;
        }
    }

    public final int getWindowIndex(int i10) {
        boolean z10;
        int[] iArr;
        int i11 = 0;
        if (i10 < 0 && i10 >= this.f22006i) {
            z10 = false;
        } else {
            z10 = true;
        }
        Preconditions.checkArgument(z10, "rowIndex is out of index:" + i10);
        while (true) {
            iArr = this.f22005h;
            if (i11 >= iArr.length) {
                break;
            } else if (i10 < iArr[i11]) {
                i11--;
                break;
            } else {
                i11++;
            }
        }
        if (i11 == iArr.length) {
            return i11 - 1;
        }
        return i11;
    }

    public final boolean hasColumn(String str) {
        return this.f22001d.containsKey(str);
    }

    public final boolean hasNull(String str, int i10, int i11) {
        a(str, i10);
        if (this.f22002e[i11].getType(i10, this.f22001d.getInt(str)) == 0) {
            return true;
        }
        return false;
    }

    public final synchronized boolean isClosed() {
        return this.f21998a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (parcel == null) {
            return;
        }
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.f22000c, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f22002e, i10, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.f21999b);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i10 & 1) != 0) {
            close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i10, String[] strArr, CursorWindow[] cursorWindowArr, int i11, Bundle bundle) {
        this.f21998a = false;
        this.f22007j = true;
        this.f21999b = i10;
        this.f22000c = strArr;
        this.f22002e = cursorWindowArr;
        this.f22003f = i11;
        this.f22004g = bundle;
        collectColumsAndCount();
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i10, Bundle bundle) {
        Preconditions.checkNotNull(strArr, "columnsP cannot be null");
        Preconditions.checkNotNull(cursorWindowArr, "cursorWindowP cannot be null");
        this.f21998a = false;
        this.f22007j = true;
        this.f21999b = 1;
        this.f22000c = strArr;
        this.f22002e = cursorWindowArr;
        this.f22003f = i10;
        this.f22004g = bundle;
        collectColumsAndCount();
    }

    private DataHolder(HMSCursorWrapper hMSCursorWrapper, int i10, Bundle bundle) {
        this(hMSCursorWrapper.getColumnNames(), d(hMSCursorWrapper), i10, bundle);
    }

    public DataHolder(Cursor cursor, int i10, Bundle bundle) {
        this(new HMSCursorWrapper(cursor), i10, bundle);
    }

    private DataHolder(Builder builder, int i10, Bundle bundle) {
        this(builder.f22008a, c(builder, -1), i10, (Bundle) null);
    }

    private DataHolder(Builder builder, int i10, Bundle bundle, int i11) {
        this(builder.f22008a, c(builder, -1), i10, bundle);
    }
}
