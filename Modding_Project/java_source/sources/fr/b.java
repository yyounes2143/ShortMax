package fr;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: BluetoothUtils.java */
@SuppressLint({"MissingPermission"})
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f51928a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Integer, BluetoothProfile> f51929b;

    /* renamed from: c  reason: collision with root package name */
    private static final BluetoothProfile.ServiceListener f51930c = new a();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f51931d = false;

    static {
        int[] iArr = {1};
        f51928a = iArr;
        f51929b = new HashMap(iArr.length);
    }

    @Nullable
    private static Set<String> b(@NonNull Context context, @Nullable Integer num) {
        HashSet hashSet = null;
        if (!io.bidmachine.core.g.M(context, "android.permission.BLUETOOTH")) {
            return null;
        }
        try {
            if (BluetoothAdapter.getDefaultAdapter() == null) {
                return null;
            }
            HashSet hashSet2 = new HashSet();
            try {
                for (Map.Entry<Integer, BluetoothProfile> entry : f51929b.entrySet()) {
                    if (num != null && !entry.getKey().equals(num)) {
                    }
                    BluetoothProfile value = entry.getValue();
                    if (value != null) {
                        for (BluetoothDevice bluetoothDevice : value.getConnectedDevices()) {
                            String name = bluetoothDevice.getName();
                            if (!TextUtils.isEmpty(name)) {
                                hashSet2.add(name);
                            }
                        }
                    }
                }
                return hashSet2;
            } catch (Exception unused) {
                hashSet = hashSet2;
                return hashSet;
            }
        } catch (Exception unused2) {
        }
    }

    @Nullable
    public static Set<String> c(@NonNull Context context) {
        return b(context, 1);
    }

    @Nullable
    public static Boolean d(@NonNull Context context) {
        int i10;
        if (!io.bidmachine.core.g.M(context, "android.permission.BLUETOOTH")) {
            return null;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            boolean z10 = true;
            if (defaultAdapter != null) {
                i10 = defaultAdapter.getProfileConnectionState(1);
            } else {
                i10 = -1;
            }
            if (i10 != 2) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void e(@Nullable Context context) {
        BluetoothAdapter defaultAdapter;
        if (context == null || context.getApplicationContext() == null || f51931d || !io.bidmachine.core.g.M(context, "android.permission.BLUETOOTH")) {
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Exception unused) {
        }
        if (defaultAdapter == null) {
            return;
        }
        for (int i10 : f51928a) {
            defaultAdapter.getProfileProxy(context.getApplicationContext(), f51930c, i10);
        }
        f51931d = true;
    }

    /* compiled from: BluetoothUtils.java */
    /* loaded from: classes8.dex */
    class a implements BluetoothProfile.ServiceListener {
        a() {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i10, BluetoothProfile bluetoothProfile) {
            b.f51929b.put(Integer.valueOf(i10), bluetoothProfile);
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i10) {
        }
    }
}
