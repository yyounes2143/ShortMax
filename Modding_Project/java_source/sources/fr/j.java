package fr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Tag.java */
/* loaded from: classes8.dex */
public class j {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f51935a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f51936b;

    public j(@NonNull String str) {
        this.f51935a = str;
    }

    @NonNull
    public String toString() {
        if (this.f51936b == null) {
            this.f51936b = this.f51935a + " @" + Integer.toHexString(hashCode());
        }
        return this.f51936b;
    }
}
