package com.startshorts.androidplayer.bean.auth;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: AuthReason.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AuthReason {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ AuthReason[] $VALUES;
    public static final AuthReason LOGIN = new AuthReason("LOGIN", 0);
    public static final AuthReason BIND = new AuthReason("BIND", 1);

    private static final /* synthetic */ AuthReason[] $values() {
        return new AuthReason[]{LOGIN, BIND};
    }

    static {
        AuthReason[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private AuthReason(String str, int i10) {
    }

    @NotNull
    public static a<AuthReason> getEntries() {
        return $ENTRIES;
    }

    public static AuthReason valueOf(String str) {
        return (AuthReason) Enum.valueOf(AuthReason.class, str);
    }

    public static AuthReason[] values() {
        return (AuthReason[]) $VALUES.clone();
    }
}
