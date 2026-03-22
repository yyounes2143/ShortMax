package io.bidmachine.iab.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.Arrays;
/* loaded from: classes7.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public boolean f54620a;

    /* renamed from: b  reason: collision with root package name */
    public int f54621b;

    public m(boolean z10, int i10) {
        this.f54620a = z10;
        this.f54621b = i10;
    }

    public static int a(String str) {
        int indexOf = Arrays.asList("portrait", "landscape", DevicePublicKeyStringDef.NONE).indexOf(str);
        if (indexOf != -1) {
            return indexOf;
        }
        return 2;
    }

    public String b() {
        int i10 = this.f54621b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return "error";
                }
                return DevicePublicKeyStringDef.NONE;
            }
            return "landscape";
        }
        return "portrait";
    }

    public int c(@NonNull Context context) {
        int i10;
        if (context.getResources().getConfiguration().orientation == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i11 = this.f54621b;
        if (i11 == 0) {
            return 1;
        }
        if (i11 == 1) {
            return 0;
        }
        if (this.f54620a) {
            return -1;
        }
        return i10;
    }

    @NonNull
    public String toString() {
        return "MRAIDOrientationProperties{allowOrientationChange=" + this.f54620a + ", forceOrientation=" + b() + '}';
    }
}
