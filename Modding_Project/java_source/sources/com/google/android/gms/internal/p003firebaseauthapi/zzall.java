package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzall  reason: invalid package */
/* loaded from: classes4.dex */
public class zzall extends IOException {
    private boolean zza;

    public zzall(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzalo zza() {
        return new zzalo("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzb() {
        return new zzall("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzc() {
        return new zzall("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzd() {
        return new zzall("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zze() {
        return new zzall("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzf() {
        return new zzall("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzg() {
        return new zzall("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzh() {
        return new zzall("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzi() {
        return new zzall("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzall zzj() {
        return new zzall("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk() {
        this.zza = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzl() {
        return this.zza;
    }

    public zzall(String str) {
        super(str);
    }

    public zzall(String str, IOException iOException) {
        super(str, iOException);
    }
}
