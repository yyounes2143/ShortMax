package com.mbridge.msdk.foundation.same.net.utils;
/* compiled from: CommonHttpConfig.java */
/* loaded from: classes5.dex */
public class a {
    public static String a(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        int i10;
        String str;
        if (aVar == null) {
            return "Network error,Load failed";
        }
        try {
            int i11 = aVar.f27119a;
            com.mbridge.msdk.foundation.same.net.toolbox.a aVar2 = aVar.f27121c;
            if (aVar2 != null) {
                i10 = aVar2.f27142d;
            } else {
                i10 = 0;
            }
            if (i11 != -2) {
                if (i11 != 15) {
                    if (i11 != 880023) {
                        if (i11 != 880041) {
                            switch (i11) {
                                case 1:
                                    return "Network error,Load failed";
                                case 2:
                                    str = "Network error,I/O exception";
                                    break;
                                case 3:
                                    str = "Network error,timeout exception";
                                    break;
                                case 4:
                                    str = "Network unknown error";
                                    break;
                                case 5:
                                    str = "Network error，https is not work,please check your phone time";
                                    break;
                                case 6:
                                    if (i10 != 0) {
                                        str = "Network error,please check state code " + i10;
                                        break;
                                    } else {
                                        str = "Network error,please check ";
                                        break;
                                    }
                                case 7:
                                    if (i10 != 0) {
                                        str = "The server returns an exception state code " + i10;
                                        break;
                                    } else {
                                        str = "The server returns an exception ";
                                        break;
                                    }
                                case 8:
                                    str = "Cast exception, return data can not be casted correctly";
                                    break;
                                default:
                                    switch (i11) {
                                        case 10:
                                            str = "Network error,socket timeout exception";
                                            break;
                                        case 11:
                                            str = "Network error，sslp exception";
                                            break;
                                        case 12:
                                            str = "Network error,ConnectException";
                                            break;
                                        case 13:
                                            if (aVar2 != null) {
                                                byte[] bArr = aVar2.f27139a;
                                                if (bArr != null) {
                                                    return new String(bArr);
                                                }
                                                return "Socket exception message is NULL";
                                            }
                                            str = "Unknown socket exception";
                                            break;
                                        default:
                                            str = "Network error,unknown";
                                            break;
                                    }
                            }
                        } else {
                            str = "Network error,UnknownHostException";
                        }
                    } else {
                        str = "timeout";
                    }
                } else {
                    str = "Network error,I/O exception contents null";
                }
            } else {
                str = "Network is canceled";
            }
            return str;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "Network error,Load failed";
        }
    }
}
