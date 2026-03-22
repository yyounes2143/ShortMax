package kr;

import androidx.annotation.Nullable;
import java.util.TimeZone;
/* compiled from: SystemTimeManagerInstance.java */
/* loaded from: classes8.dex */
public final class b implements c {
    @Override // kr.c
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // kr.c
    @Nullable
    public String getTimeZoneId() {
        return TimeZone.getDefault().getID();
    }
}
